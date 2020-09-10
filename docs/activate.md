EECS and ROSIE use a separate account management system than the campus network. To request an account, contact the EECS department or the ROSIE SysAdmin.

You will be given a username and temporary password. **Note: You must log in via shell to reset this temporary password before you can use the web portal.**

## Steps <!-- {docsify-ignore-all} -->

1. Prepare a terminal with a SSH client program.
   
On Windows you can use [Putty](https://www.putty.org/) or [GitBash](https://git-scm.com/downloads). On Mac/Linux ssh is included with the default terminal application.

2. Connect to a management node.
   
**If you are off campus, you must connect to [MSOE VPN](https://vpn.msoe.edu) with your campus account before being able to connect to ROSIE.**

Launch your terminal program and input the command (replacing username with your own):

```shell
$ ssh username@dh-mgmt2.hpc.msoe.edu
```

The system will prompt for the temporary password. Input this to proceed.

3. Reset Temporary Password

After connecting to the machine, the system will ask the user to reset this temporary password. First re-enter the temporary password, then input a unique new user password for yourself. 

It is critical to follow healthy password protocol here - the more complicated the more secure.

4. Success

After inputting your new password twice, the system will permit entry into the management node. You can now close this connecting or explore command line interface with the cluster. You can visit the web portal and login with your username and new password.