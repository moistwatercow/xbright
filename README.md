# xbright
A simple bash script used to easily get and change the brightness of a monitor.

## Installation

Install xbright directly to the /bin directory.<br>
`# wget -O /bin/xbright https://raw.githubusercontent.com/charles-peck/xbright/main/bright.sh`<br>
`# chmod +x /bin/xbright`<br>

Which can then be used like so: `xbright [commands]`

### or

Install xbright as a .sh file<br>
`$ wget -O xbright.sh https://raw.githubusercontent.com/charles-peck/xbright/main/bright.sh`<br>
`# chmod +x xbright.sh`<br>

Which can then be used like so: `sh /path/to/file/xbright.sh [commands]`

## Usage
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
- Status bar to get brightness (ex: slstatus)

## Additional information
- The monitor name can be found by running the `xrandr` command.
- The expression can really be any mathematical expression but its recomended to stick with only + and -.
