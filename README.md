# xbright
A simple bash script used to easily get and change the brightness of a monitor using Xorg.

## Installation
Install xbright as a .sh file<br>
`$ wget -O xbright.sh https://raw.githubusercontent.com/moistwatercow/xbright/main/bright.sh`<br>
`# chmod +x xbright.sh`<br>

Which can then be used like so: `sh /path/to/file/xbright.sh [commands]`<br>
You can also place the shell file in /bin for easy access if you wish.

## Usage
`xbright $monitorname [$expression]`<br>

Get brightness
`xbright $monitorname`

Increment/Decrement brightness
`xbright $monitorname [$expression]`

### Examples

Get the brightness of DisplayPort-0<br>
`xbright DisplayPort-0`

Increase the brightness of DisplayPort-0 by 0.05<br>
`xbright DisplayPort-0 +0.05`

Decrease the brightness of DisplayPort-0 by 0.05<br>
`xbright DisplayPort-0 -0.05`

## Known issues
- Issues decreasing with a number with more than 1 decimal (ex: 0.05, 0.01, 0.005) past a brightness of 1. (I know, complicated, but I believe this is a problem with xrandr)  

## When to use
- Keybind to increment/decrement brightness
- Status bar to get brightness (ex: slstatus, conky)

## Additional information
- The monitor name can be found by running the `xrandr` command.
- The expression can be any mathematical expression but its recomended to stick with only + and -.
- Brightness is represented on a scale of 0 to 1, with 0 being off and 1 being 100%. It is possible to go above 1, but it may cause some unintended problems, nothing to do with xbright though.
