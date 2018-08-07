# Ubuntu-Clipboard-Sync

Disclaimer: This is not an open source project. This repo is only available as a backup for myself. However, you are free to make any modifications and use it in anyway if you wish.

![clipsync](https://i.imgur.com/OZCJ8oT.png)

###### How it works..
This is a really simple tool I wrote (in less than a few hours) to sync my clipboard with my phone. Before this, I always had to use some kind of a third party service or a tool to do this, which required installation of apps etc. So to overcome this barrier, I started making this simple tool which I can use to sync whenever I want.

Basically it works by serving a shell script (which reads the user's clipboard) using the Python's built in CGI web server. Then I use my phone to connect to my device over the LAN, and with a single click, I can get what was in my PC to my phone's clipboard.

###### Why I used a browsing method instead of automatic sync on the phone? 

Mostly I copy URLs between my PC and my phone, so this seemed as the best solution for my use case, because I can copy the link, and straight away I can paste the copied URL in phone browser's address bar and navigate. For that matter, I didn't bother to write any services for my android phone.
 

###### If you want to try it..

If you want to try this, first you need to satisfy the following dependencies. This tool depends highly on

1. Ubuntu (I have not tried it in any other platform).
2. Python 2.7
3. xclip

```apt install xclip```

4. Bash (or shell)
5. Execute permission on clip.sh file.

###### How to use it...
Just copy anything you want, then run the run.sh file and it will start a web server on port 8000 by default (this is customizable) . Then open your phone' browser and navigate to the URL shown in the terminal.

You can also add a symbolic link to run.sh file in your /usr/bin/ directory to invoke this as a command.

```sudo ln -s /home/nimeshka/clipboard-sync/run.sh /usr/bin/clipsync```

