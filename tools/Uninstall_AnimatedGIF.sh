#!/bin/bash
cd
launchctl unload ~/Library/LaunchAgents/net.fough3.AnimatedGIF.plist
\rm ~/Library/LaunchAgents/net.fough3.AnimatedGIF.plist
cd "~/Library/Screen Savers"
\rm -rf AnimatedGIF.saver
cd
cd ~/Library/Preferences/ByHost &&
\rm net.fough3.AnimatedGIF.*
