#!/bin/bash
echo "Starting script at $(date)" >> /home/pearl/start.log
# Wait for the system to fully boot
sleep 10
echo "wating for X server to start..." >> /home/pearl/start.log

# Wait until X server is ready
while ! xset q &>/dev/null; do
    echo "X server not ready yet, put to sleep..." >> /home/pearl/start.log
    sleep 5
done
echo "X server is ready. Launching Midori..." >> /home/pearl/start.log

# Set DISPLAY explicitly
export DISPLAY=:0
# Launch app using midori in full-screen mode
midori -e Fullscreen -a http://192.168.8.189:3000

echo "Finished script at $(date)" >> /home/pearl/start.log
