# Cron
each user has their own cron jobs, they are stored in the crontab

## basic commands
- ```crontab -l``` lists all cron jobs for the current user (example: ```sudo crontab -u root -l``` list contents of roots crontab)
- ```crontab -e``` edit crontab for the current user
- ```crontab -u user -e``` edit crontab for the user "user"

# contents of crontab
m h    dom mon dow    command

m      minute
h      hour
dom    day of month
mon    month
dow    day of week

means every, so if * appears in m the job would run every minute

5 9 15 * * echo "hello world"    # job will run the 15th of every month at 9:05 am

@hourly echo "hello world"    # runs every hour
@reboot echo "hello world"    # runs at reboot



best practice is to include the full path to the script

https://crontabgenerator.org/
