#!/bin/bash

#set inputted variables for simplicity
br_monitor=$1
br_expression=$2


#get the current brightness
raw_br=$( xrandr --verbose --current | grep ^"$br_monitor" -A5 | tail -n1 )
br_level=${raw_br/Brightness: }


#if no expression is provided (get)
if [[ $br_expression = '' ]];
then
    echo $br_level

#else an expression is provided (set)
else
    #calculate the new brightness
    br_new_level=$( echo $br_level$br_expression | bc)

    #using xrandr update the brightness
    $( xrandr --output $br_monitor --brightness $br_new_level ) 
fi
