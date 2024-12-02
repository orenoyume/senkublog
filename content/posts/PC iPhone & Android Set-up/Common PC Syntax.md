+++
date = '2024-12-02T17:20:11+08:00'
draft = false
title = 'Common PC Syntax'
categories = ['pc']
tags = ['syntax']
weight = 100
[params]
  author = 'senkublog'
+++
## Linux
### Shutdown
```
shutdown -h now
```
### Reboot
```
Shutdown -r 1
```
### Find your local IP address
```
ifconfig
```
Find the IP address, e.g., 192.168.1.100.
On the other PC, open a browser and go to:
http://192.168.1.100:3000

### Check folder size

```
du -ha | sort -k1hr | head -n 10
```
## Windows
### Shutdown
```
shutdown /s /t 60
```
### Find your local IP address
```
ipconfig
```
Find the IPv4 address, e.g., 192.168.1.100.
### Edit Boot loader
1. Windows Button + R key
2. Run
```
msconfig
```
## Mac
### Shutdown
```
shutdown -h +10
```
## Android
### Moving my file from Termux to phone

```
mv /data/data/com.termux/files/home/storage/japanese /storage/emulated/0/
```