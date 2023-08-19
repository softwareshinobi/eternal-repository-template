# You Just Created A New Ubuntu Linux Server, Now What!?

In this article you will create a server provisioning bash script that will update, upgrade and configure your new ubuntu linux server.

![You Just Created A New Ubuntu Linux Server, Now What!?](cover-image.png)

So you've just created a new ubuntu linux server.

Naturally you ask the following question: "I've got a new ubuntu linux server, now what?"

First things first, let's do some simple OS configuration and install some stuff.

In this article you will create a server provisioning bash script that will update, upgrade and configure your new ubuntu linux server.

## What This Ubuntu Server Provision Script Will Do

This simple bash script will configure your new linux server with some basic software and capabilities.

* Update your operating system packages
* Upgrade your operating system software and applications
* Install basic networking software tools
* Install docker & docker compose to run containers

## Creating The Ubuntu Server Provision Script On Disk

The first thing to do is create a new file with a `.sh` extension.

The provision script will be a file called `provision-new-ubuntu-linux-server-basic.sh`.

Use the following command to create the provision script file.

```bash
touch provision-new-ubuntu-linux-server-basic.sh 
```

## Going Into Detail Of The Simple Ubuntu Linux Provision Script

In the following sections I will detail the key sections of this basic linux server provision script so that you can understand what is happening and why in the script.

And don't worry, at the end of the document i will share a link to my GitHub with the complete and ready to run provision script.

## Configure The Provision Script To Use The Bash Shell

Once you've created the script with the `touch` command, open it with your favorite text editor.

Add the following line to the top of the provision script.

This line executes the script using the Bash shell.

```bash
#!/bin/bash
```

## Configure The Script To Stop On Failure

Sometimes things go wrong with scripts and automation and for any number of reasons.

So when an error happens, we want all script execution activities to stop.

It's best to stop the script instead of continuing further execution in the event something failed.

We instruct the script to do this by setting a configuration flag using the `set` command.

```bash
set -e
```

## Reset The Terminal Screen

Completely optional, but i like to clear the screen before my scripts execute.

I prefer a pristine and empty screen to read from as the script executes.

It's an OCD thing.

Don't be like me, but this is how you do it:

```bash
reset;clear;
```

## Print A Message To Standard Out That The Process Has Started

So here we just let the user know that the script is starting. Nothing fancy.

```bash
echo
echo "## "
echo "## routine: [provision-new-ubuntu-linux-server-basic] // state: [starting]"
echo "## "
echo
```

## Update the Operating System Packages

We are going to upgrade the OS and install software. 

Before we do that we are going update to update the software repository from  the official Ubuntu aptitude repositories.

To do that, we’ll run the following command:

```bash
apt-get update
```

## Upgrade Existing Software And Operating System

So we've updated the packages from Aptitude.

Now let's do the all the upgrades. There are two of them.

One for the software on the system. Another for the system itself.

```bash
apt-get upgrade -y

apt-get dist-upgrade -y
```

## Installing Networking Monitoring Tools

It won't be long before you need to monitor the networking situation on your linux server.

The `net-tools` package gives us applications like `netstat` to poll ports and connections.

Better to install it now, than in the heat of the moment of server troubleshooting.

```bash
apt-get install -y net-tools
```

## Installing Docker And Docker Compose

It is my belief that the modern linux server must support Docker.

The landscape has shifted towards Docker and I think this Docker trend will continue.

So let's install `docker` and `docker-compose` together.

```bash
apt-get install -y docker-compose
```

The `docker-compose` installation will install the most correct version of `docker` for you behind the scenes.

## Print A Message To Standard Out That The Process Has Completed

So here we just let the user know that the script is done. Again, nothing fancy.

```bash
echo
echo "## "
echo "## routine: [provision-new-ubuntu-linux-server-basic] // state: [completed]"
echo "## "
echo
```

## Make The Provision Script Executable

Save the file and exit.

After that make the script executable by running the following command:

```bash
chmod +x provision-new-ubuntu-linux-server-basic.sh
```

## Verify Permissions Of Your Bash File

We'll need to verify the permissions on the bash file before we run it.

To do that, we simply run the `ls -l` command:

```bash
ls -l provision-new-ubuntu-linux-server-basic.sh 
```

You want to see something similar to the following:

```bash
-rwxrwxr-x 1 software-shinobi software-shinobi 679 ago 16 11:17 provision-new-ubuntu-linux-server-basic.sh
```

You are looking for (3) three "x" in the beginning part that looks like this:

```bash
-rwxrwxr-x
```

## Executing The Provision Script File

So we've created and updated the provision script. We've set the proper permissions on the provision script as well.

Now, let's kick off the provision script and the installation processes.

Run the following command to execute the provision script on your new ubuntu linux server.

```bash
sudo bash provision-new-ubuntu-linux-server-basic.sh
```

We run the script as `sudo` because the commands requires require elevated access to modify the operating system files.

## Did You Run The Script Correctly?

Let's check your work. 

After you execute the provision script, verify your terminal window looks like mine:

```bash

## 
## routine: [provision-new-ubuntu-linux-server-basic] // state: [starting]
## 

Hit:1 http://co.archive.ubuntu.com/ubuntu jammy InRelease
Hit:2 http://co.archive.ubuntu.com/ubuntu jammy-updates InRelease
Hit:3 http://co.archive.ubuntu.com/ubuntu jammy-backports InRelease            
Hit:4 http://security.ubuntu.com/ubuntu jammy-security InRelease               
Hit:5 https://dl.google.com/linux/chrome/deb stable InRelease        
Reading package lists... Done
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
Calculating upgrade... Done
...
```

## Get The Complete Provision Script From GitHub

I've made it easy to try out the provision script yourself.

If you don't feel like all the copy and paste work, then just clone my GitHub repo instead.

The GitHub repo got everything that you need to upgrade and execute the provision script.

[https://github.com/software-shinobi/you-just-created-a-new-ubuntu-linux-server-now-what](https://github.com/software-shinobi/you-just-created-a-new-ubuntu-linux-server-now-what)

## Conclusion

Server provisioning scripts are great for automating installations and activities on linux servers.

Today we created a simple provision script to upgrade the base operating system and install basic networking and containerization software on your ubuntu linux server.

Should you be inclined, update the basic provision script code with your favorite software and customizations and push it all to your GitHub.

The next time you create a new linux server, clone the repo, run the provision script and watch your computer update and upgrade itself to your liking!