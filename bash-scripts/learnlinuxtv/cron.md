crontab -l
# view the crontab file

crontab -e
# edit the crontab file

sudo crontab -u [user] -e
# edit the crontab for a specific, other user [user]


# LINE STRUCTURE

m h dom mon dow command
m = minute, use * for any
h = hour, 
dom = day of month
mon = month
dow = day of week, sun is 0 or 7
command = can enter whole command here or can refference a script saved somewhere else, use fully qualified commands (example: /usr/tmp/script instead of just script)


# ALTERNATE TIMES
@hourly
@daily
@weekly
@monthly

>> append to the end of a file
