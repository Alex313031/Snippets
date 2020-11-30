# Snippets

Various little snippets, scripts, and batch files, usually having something to do with Chromium or Windows.

>> cr.bat is a small batch file for launching chromium within its working dir and appending command line flags since windows "target" box limits to 255 characters. NOTE: SUBSTITUTE "ALEXANDER" for your username. Could also be used for any chromium based browser.

>> cr_mem_total.ps1 is a small VBScript script to show total mem usage in gb of chrome.exe. Be aware it uses process name so if you have say, chromium and chrome canary or chrome and chrome beta it will sum up all. Chomium based browsers launch many processes so It is hard otherwise to see total usage even with something like ProcessExplorer by Sysinternals. --There is also a gist of this.

>> OS_INSTALL_DATE.VBS is rather self explanatory, queries WMI to show OS install time, reflecting the recorded time at first boot, not when setup was actually launched.

>> KEY.VBS Shows what your installed product key is, useful for reinstalls.
