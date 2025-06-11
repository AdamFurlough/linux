# SELinux (Security Enhanced Linux)

## What is SELinux?

- like a firewall
- need to create rules to explicitly allow things

## Videos

- [Video, Shawn Powers](https://youtu.be/BCeIZso0TH4)

## How to Disable SELinux

To disable SELinux on Fedora, follow these steps:

1. Check Current SELinux Status:  `sudo sestatus` This will show you the current status of SELinux, whether it is enabled, enforcing, permissive, or disabled.
2. Edit the SELinux Configuration File: Open the SELinux configuration file `sudo nano /etc/selinux/config`
3. Modify the Configuration: Find the line that starts with `SELINUX=` and change its value to `disabled`. It should look like this: `SELINUX=disabled`
4. Save and Exit the Text Editor:
5. Reboot the System: For the changes to take effect, you need to reboot your system `sudo reboot`
6. Verify the Changes: After the system reboots, check the status of SELinux again to ensure it is disabled `sudo sestatus`

## Troubleshooting (common work flow when setting up a new application)

1. set selinux to permissive mode
2. run the application
3. check the logs to see what would have been blocked if selinux had been in enforcing mode
4. create rules to allow the things in the logs
5. set selinux back to enforcing mode

## Modes and Type

SELinux can run in 3 modes.  This is set in the config file loaded on boot.
1. enforcing - SELinux security policy is enforced
2. permissive - SELinux prints warnings instead of enforcing
3. disabled - No SELinux policy is loaded

Type
1. targeted - almost everyone will use this.  It allows or denies by process.
2. mls (multi level security) - only really high-security systems like mil rhel would use this.  It is fine-grained control and only allows processes in certain contexts.

##  Labels and contexts

- `ls -lZ` can be used to show labels and contexts on files.  The first 3 will have a `_<letter>` as a reminder of which it is.
	1. **User field `_u`** 
		- every linux system user is mapped to an selinux user but they are not the same 
		- example: `unconfined_u`
	3. **Role field `_r`** 
		- what users or daemons can do with a file
		- example: `object_r`
	5. **Type field `_t`** 
		- what type or kind of file this is (this is the most important to know for linux+ and first rhel cert)
		- this field is the most common to get messed up or broken.  commands like `mv` and `cp` can preserve context where they shouldn't
		- example: `httpd_sys_content_t`
	7. **Sensitivity field** - only applies when using mls type
		- example: `s0`

## Fixing Context

- **change context** `chcon`
	- change context by field to a value you provide
	- usage: `chcon <selectWhichContext> <newContextValue> <file>`
	- example: `chcon -t httpd_sys_content_t move.html`
- **restore context** `restorecon`
	- attempt to set context to whatever it should be based on file location
	- usage: `restorecon <file>`
	- example: individual file `restorecon move.html`, recursively file all files `restorecon -R *`
	- alternatively can create `.autorelable` empty file somewhere (maybe he said root?) and selinux will try to fix everything on the system
