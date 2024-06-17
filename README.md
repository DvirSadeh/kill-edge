# kill-edge
Prevent microsoft self-advertising with edge/microsoft store to randomly appear after PC unlock

This repository contains a simple PowerShell script, `KillEdge.ps1`, designed to prevent Microsoft self-advertising via Edge or Microsoft Store from appearing randomly after unlocking your PC.

## Description

Microsoft Edge and Microsoft Store sometimes popup and display advertisements or promotional content when a PC is unlocked.
If you prefer using Microsoft Edge, that's great. However, if you do not wish to use Edge, you may find it frustrating that it cannot be uninstalled and frequently reopens on your desktop with advertisements for itself or other Microsoft products, such as Office 365. I find this behavior very annoying and not cool at all. So, if Microsoft doesn't want to let Edge go from our lives, we will do it ourselves.

This script aims to automatically close these applications if they are running at PC unlocking moment.

## Setup Instructions
Save the KillEdge.ps1 script to a directory of your choice.

Open Task Scheduler, click on Create Task... in the right-hand Actions pane.

In the General tab:
Name your task (e.g., "Kill Edge").
Check Run with highest privileges.

In the Triggers tab:
Click New...
From the Begin the task dropdown, select On workstation unlock.

In the Actions tab:
Click New...
From the Action dropdown, select Start a program.
In the Program/script field, enter powershell.exe.
In the Add arguments (optional) field, enter -File "C:\path\to\KillEdge.ps1" (with the actual path to your script file).
Click OK.

In the Conditions tab:
Uncheck Start the task only if the computer is on AC power.
Click OK to create the task. You may need to enter your password to confirm.
