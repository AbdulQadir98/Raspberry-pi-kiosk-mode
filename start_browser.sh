#!/bin/bash

echo "Starting script at $(date)" >> /home/pearl/start.log

# Wait for the system to fully boot
sleep 20

echo "wating for X server to start..." >> /home/pearl/start.log

# Wait until X server is ready
while ! xset q &>/dev/null; do
    echo "server not ready yet, put to sleep" >> /home/pearl/start.log
    sleep 5
done

echo "X server is ready. Launching Midori..." >> /home/pearl/start.log
# Set DISPLAY explicitly
export DISPLAY=:0

# Launch midori in full-screen mode
midori -e Fullscreen -a file:///home/pearl/index.html

echo "Finished script at $(date)" >> /home/pearl/start.log

it launched the midori browser but did not 
echo "Finished script at $(date)" 