Debugging
Logs: Look at system logs or ~/.xsession-errors for any errors related to your script.

Another alternative Method: Using .xinitrc

### The last log is not gettig executed 

Potential Issues and Solutions
1. Script Blocking by Midori: When Midori is launched in fullscreen mode, it might block the script from continuing to execute. To confirm if this is the case, you could try running Midori without fullscreen mode first to see if the script completes.
`midori -a file:///home/pearl/index.html`
If this works and the script continues, then fullscreen mode might be causing the issue.

2. Background Execution: To avoid the script being blocked by Midori, you can run Midori in the background. This allows the script to complete and log the final message:
`midori -e Fullscreen -a file:///home/pearl/index.html &`
Adding & at the end of the command runs Midori in the background, allowing the script to proceed to the next lines.

3. Add a Delay After Launching Midori: If you suspect Midori might be causing the script to hang, you could add a short delay after launching Midori to ensure it has time to start:
```bash
midori -e Fullscreen -a file:///home/pearl/index.html &
sleep 5
echo "Finished script at $(date)" >> /home/pearl/start.log
```

4. Exit Behavior: Ensure that the script is not terminating prematurely due to a system configuration issue. Make sure that the script is executed in an environment where it has sufficient permissions and resources.
