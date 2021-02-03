# Tips of the day for bash cli

## Basic idea

This is a tool printing out a refreshment of how to use the awesome git in various cases with every login to your bash cli. The best feature is you can write the tips texts yourself.

## Instructions for deployment

To deploy this in your environment

0) No warranty. Do this in your own responsibility.

1) Place the contents of this repo somewhere in your homedirectory:
```
$ cd
$ mkdir tools
$ cd tools
$ git clone <this repo>
```
2) Create a symbolic link to the tips diretory in your home directory:
```
$ cd
$ ln -s tools/tips
```
3) Add calling for the script to the end of the .bashrc file of your home directory:
```
$ cd 
$ echo "sh tools/gittips/tips.sh" >> .basrch
```
4) Try out
```
$ cd
$ source .bashrc
```
5) No warranty. Do this in your own responsibility.


