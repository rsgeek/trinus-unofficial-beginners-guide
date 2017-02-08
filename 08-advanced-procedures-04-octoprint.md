
### Print Over Wifi - OctoPrint
Here’s a quick guide to get OctoPrint up and running, which was very straight forward. I used a Raspberry Pi 3 and OctoPi to get OctoPrint up and running quickly. 

* Installed the latest version of OctoPi on the Raspberry Pi 3’s SD Card. See [OctoPi’s website](https://octopi.octoprint.org/) on how to do this process for your setup.
* Followed these instructions to get the WiFi setup properly with the RPi 3: <https://www.youtube.com/watch?v=dZeJb6Jv-9E>
* After the network stuff is sorted, you can open your browser to the IP Address (*http://192.168.X.XXX*) of the RPi.
* Now you can go through initial install steps of setting up a username/password, after which it will ask you to update to the latest version of OctoPrint (if not already the latest).
* After the update process is complete, it will reload the OctoPrint service.
* Time to update the Default Printer Profile, just so that OctoPrint knows a little about your printer. Go into Settings -> Printer Profile, then Edit the Default. ![OctoPrint - printer profile edit](chapter-08-advanced-procedures/octoprint/img/octoprint-settings-printer-profiles-edit.png)
* Now update the Build Volume and tell OctoPrint if you have a Heated Bed installed. ![OctoPrint - printer profile volume](chapter-08-advanced-procedures/octoprint/img/octoprint-settings-printer-profile-edit-volume.png)
* It’s also a good idea to change the Communication Timeout to around 60 seconds; sometimes the Trinus can be slow to respond to messages during the heat up phase. So this is to ensure the model continues printing even if the communication takes a little longer than normal. ![OctoPrint - serial timeout](chapter-08-advanced-procedures/octoprint/img/octoprint-settings-serial-con-timeout.png)
* If the device isn’t currently sitting next to your Trinus, you will need to shut it down so that you can move it to it’s final resting place. ![OctoPrint - system shutdown](chapter-08-advanced-procedures/octoprint/img/octoprint-system-list-shutdown.png)
* Plug the device in next to your Trinus, get both devices powered up, then connect the USB cord from the Trinus to the RPi.
* Open the browser on your computer and browse to the IP Address of your RPi (*http://192.168.X.XXX*), after you login, using the credentials you created earlier, you can now connect to the printer. ![OctoPrint - not connected](chapter-08-advanced-procedures/octoprint/img/octoprint-main-not-connected.png)
* Now you can Drag and Drop your files to the local file system. Since currently it’s not possible to upload to the SD card stored on the Trinus. ![OctoPrint - upload locally](chapter-08-advanced-procedures/octoprint/img/octoprint-upload-file-locally.png)
* If you don’t see your newly uploaded files, you may need to change the setting to see files stored locally. ![OctoPrint - view local contents](chapter-08-advanced-procedures/octoprint/img/octoprint-main-file-list-settings-local.png)
* Then simply click the Print button for the file you want to print and it will stream it to the Trinus with no issues. Or if you click a File Name, you can then click on the Blue Print button above the file list. The small print button is greyed out for the selected (green name), so you need to use the larger one above. ![OctoPrint - print selected file](chapter-08-advanced-procedures/octoprint/img/octoprint-main-file-selected-print.png)

> ##### NOTE
> If you find you still have questions regarding the finer details for setting this up, please check out [Thomas Sanladerer’s](https://www.youtube.com/channel/UCb8Rde3uRL1ohROUVg46h1A) video on the subject. 
>
> ##### Getting started with OctoPrint on the Raspberry Pi 1, 2 and 3! [2016 edition]
> <https://www.youtube.com/watch?v=MwsxO3ksxm4>
