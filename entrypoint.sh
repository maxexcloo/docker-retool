#!/usr/bin/expect
set timeout -1
spawn python /app/retool/retool.py --update
expect "Would you like to download them?" { send "y\r" }
wait
spawn python /app/retool/retool.py [lrange $argv 0 end]
expect "Do you want to download them?" { send "y\r" }
wait
