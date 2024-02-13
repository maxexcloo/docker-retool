#!/usr/bin/expect
set timeout -1
spawn python /app/retool/retool.py --update
expect -re ".*Would you like to download them?.*" { send "y\r" }
wait
spawn python /app/retool/retool.py {*}$argv
expect -re ".*Do you want to download them?.*" { send "y\r" }
wait
