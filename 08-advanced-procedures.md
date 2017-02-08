
## Advanced Procedures

### Update Firmware
If you want to ensure your Trinus is up to date with the latest firmware, which may fix known issues, then here’s a quick look on how to do this process. You can get the latest version of the firmware from the Downloads section.

#### Check Firmware Version
* Connect your Trinus to your PC/Mac via USB.
* Load up Pango and open to the Pango Console, then click on the tab at the bottom.

 **[ INSERT IMAGE ]**

* Near the top of the Terminal window you will see the version of Firmware you have installed. Seen here we have version “3.5.6-03” installed.

 **[ INSERT IMAGE ]**


#### Update Firmware
* Go back into the Console connection screen, and click on the Firmware button.

 **[ INSERT IMAGE ]**

* Now browse to the “.hex” file that you downloaded prior, then open it up. The update process will start.

 **[ INSERT IMAGE ]**

 **[ INSERT IMAGE ]**

* It can take a up to few minutes, but it will eventually finish with the following message.

 **[ INSERT IMAGE ]**

> **NOTE**
> If for some reason it fails the first time, try again. If you can’t get it updated you may need to email ***support@kodama3d.com*** to help you track down the root cause of your issue.

### Maximize Build Volume - 3D Printing
Here’s the process to get the maximum use of the build volume, by getting your nozzles “Home” position to be exactly at the front left corner of your build plate.

#### Helpful Print
The following little helper tool will let you easily hand tighten / loosen the offset screw locking nuts. BUT you will first need to use a wrench to loosen them initially, since they were tighten quite a bit during assembly. There are 2 versions of this helper, one of them has a section cut out (right image) that lets you slide the tool over the screw shaft for usage.

**Trinus - Axis Adjustment Helper**
http://www.thingiverse.com/thing:2041158 
**[ INSERT IMAGE ]**

#### Adjust the Offset Screws
Now let’s begin the meticulous process of adjusting the offset screws to maximize the build volume.

**WARNING:** Just like when you had went through the process to Set Nozzle Distance, you will want to do this with a cold nozzle.

* Loosen all the locking nuts with a wrench, I didn’t have one small enough to fit so I just used an adjustable wrench for this.

 **[ INSERT IMAGE ]**

* The locking nut on the Y axis (slider holding your bed) is a tough nut to reach. If you don’t want to remove the bed itself, then you can simply unscrew the slider to give you more room to loosen the nut, and install the helper tool.

 **[ INSERT IMAGE ]**

* Now that we have things all prepped, it’s time to start tweaking the offset screws. 
* For this part I found that loosening the locking nut (via the helper tool), then adjusting the screws about 2 turns.
 * From the factory you will most likely need to **screw** in the Y axis offset and **unscrew** the X axis.
* Each time you move the screw (in or out)  you will want to Home the axis to check how things look. This is how you want the X / Y distance to look from the corners.

 **[ INSERT IMAGE ]**

* Then you need to move the slider to its max position (X = 120, Y = 125) to ensure it’s not going to hit the end of the slider before reaching the max value. This is very important for the Y axis as the nozzle needs to be right at the edge (image above) otherwise it will crash into the front of the slider.
* With your nozzle just above each corner you should now be able to use the entire build volume.

> **WARNING**
> Before trying to move any axis to its max position you need to Home that axis. The Trinus doesn’t know the position of the axis until it’s been homed. So when you change the offset screws, it no longer knows it’s “correct” position, so you need to Home the axis to reset what the “0” position is.

<!-- -->

> **Tip: Z-Offset Via 3rd Party Slicer (advanced user)**
> If you prefer to use a 3rd Party Slicer for “everything”, then there is a way to set / get the current Z-Offset value via the Terminal window in your prefered slicer. The Terminal window is just a way to send individual Gcode commands to the printer. Here are the 2 commands, first one to get the current value and the second will set the value (positive = closer to bed, negative = further away):
>> M628 ; Get Current Z-Offset Value
>> M628 Z0.08 ; Set Current Z-Offset Value to 0.08mm

### Maximize Build Area - Laser Engraving 
Paul Drinkut helped troubleshoot ([Facebook Post](https://www.facebook.com/groups/Trinus3D/permalink/1315472305181210/?hc_location=ufi)) the reason why the Laser Engraver wasn’t using the full build area, this was due to the fact the Laser Mount didn’t have the same left offset that the Extruder Assembly had. 

So in order to fix this, a modification was made to the official 3D Model (original model can be found in the Downloads section) to add in a small left offset of 5mm. This combined with the X/Y-Axis offset screws allowed for the maximum engraving area to be achieved. 

If you haven’t already, you will need to follow the process to Maximizing Build Volume in 3D Printing first, then you can print the fixed Laser Mount (below) to maximize your laser engraving area.

**Modified Laser Mount**
https://www.dropbox.com/s/zzg62goqsz81wo0/Trinus%20-%20Laser%20Holder%20-%20Left%20Offset%20-%2020170125.stl?dl=0

**[ INSERT IMAGE ]**

> **Tip: Find center using a cross hair image**
> Paul Drinkut had come up with a great idea of manually measuring out the center point of a piece of material (same size as the build plate), then use the laser to engrave a cross hair image to check if you have the laser centered. You can use a straightedge to extend the cross hair lines to the edge so that you can measure the results. ([Facebook Post](https://www.facebook.com/groups/Trinus3D/permalink/1318800631515044/?notif_t=group_post_mention&notif_id=1485566504148511))

> **[ INSERT IMAGE ]**
> *Image by Paul Drinkut and Photoshopped Ruler added by John Sanford*

### Print Over Wifi - OctoPrint
Here’s a quick guide to get OctoPrint up and running, which was very straight forward. I used a Raspberry Pi 3 and OctoPi to get OctoPrint up and running quickly. 

* Installed the latest version of OctoPi on the Raspberry Pi 3’s SD Card. See [OctoPi’s website](https://octopi.octoprint.org/) on how to do this process for your setup.
* Followed these instructions to get the WiFi setup properly with the RPi 3: https://www.youtube.com/watch?v=dZeJb6Jv-9E
* After the network stuff is sorted, you can open your browser to the IP Address (http://192.168.X.XXX) of the RPi.
* Now you can go through initial install steps of setting up a username/password, after which it will ask you to update to the latest version of OctoPrint (if not already the latest).
 * After the update process is complete, it will reload the OctoPrint service.
* Time to update the Default Printer Profile, just so that OctoPrint knows a little about your printer. Go into Settings -> Printer Profile, then Edit the Default.

 **[ INSERT IMAGE ]**

* Now update the Build Volume and tell OctoPrint if you have a Heated Bed installed.

 **[ INSERT IMAGE ]**

* It’s also a good idea to change the Communication Timeout to around 60 seconds; sometimes the Trinus can be slow to respond to messages during the heat up phase. So this is to ensure the model continues printing even if the communication takes a little longer than normal.

 **[ INSERT IMAGE ]**

* If the device isn’t currently sitting next to your Trinus, you will need to shut it down so that you can move it to it’s final resting place.

 **[ INSERT IMAGE ]**

* Plug the device in next to your Trinus, get both devices powered up, then connect the USB cord from the Trinus to the RPi.
* Open the browser on your computer and browse to the IP Address of your RPi (http://192.168.X.XXX), after you login, using the credentials you created earlier, you can now connect to the printer.

 **[ INSERT IMAGE ]**

* Now you can Drag and Drop your files to the local file system. Since currently it’s not possible to upload to the SD card stored on the Trinus.

 **[ INSERT IMAGE ]**

* If you don’t see your newly uploaded files, you may need to change the setting to see files stored locally.

 **[ INSERT IMAGE ]**

* Then simply click the Print button for the file you want to print and it will stream it to the Trinus with no issues. Or if you click a File Name, you can then click on the Blue Print button above the file list. The small print button is greyed out for the selected (green name), so you need to use the larger one above.

 **[ INSERT IMAGE ]**

> **NOTE** 
> If you find you still have questions regarding the finer details for setting this up, please check out [Thomas Sanladerer’s](https://www.youtube.com/channel/UCb8Rde3uRL1ohROUVg46h1A) video on the subject. 

> **Getting started with OctoPrint on the Raspberry Pi 1, 2 and 3! [2016 edition]**
> https://www.youtube.com/watch?v=MwsxO3ksxm4 

### Third Party Slicers
A slicer is what you use to turn a 3D model ([STL](https://en.wikipedia.org/wiki/STL_%28file_format%29) file) into a Gcode file, this is what defines how the 3D Printer moves, amount of material to push out, speed, temperature, etc. If you're curious what all those Gcode values do, there’s an [online wiki](https://en.wikipedia.org/wiki/G-code) that describes them all.

For the Settings, please read the provided Forum Threads as they have helpful tips and solutions that people have come up with for that respective slicer. Plus those threads are also a great place to ask questions and share your own modifications.

#### Simplify 3D (S3D)
https://www.simplify3d.com/
Considered to be the best of the best when it comes to slicers. But it also comes with a steep price tag of **$150**. So if you are planning on making money from 3D Printing, it might be worth the investment.

**Forum Thread:**
http://www.kodamaforums.com/phpBB3/viewtopic.php?f=20&t=5 

> **Tip: Configuration Assistant**
> In the Help menu is a Configuration Assistant that will allow you get the most recent profile for the Trinus 3D Printer, it’s currently listed as “Kodama Trinus”. Currently (as of the writing of this guide) there is a bug in this profile that prevents you from printing via SD Card. A user in the forums had posted a very simple fix for this:
> http://www.kodamaforums.com/phpBB3/viewtopic.php?p=1741#p1741

#### Cura
https://ultimaker.com/en/products/cura-software
This is an excellent free option with a ton of features, and is a great starting point if you want to venture out into the world of 3rd Party Slicers.


Forum Thread:
http://www.kodamaforums.com/phpBB3/viewtopic.php?f=20&t=1423

> **NOTE**
> Currently it doesn’t seem possible to use Cura to connect to your printer over USB in Windows / Mac; users have had success with Linux though. So if you need a way to print via USB then I’d suggest one of the Other Slicers such as Repetier (https://www.repetier.com/) or even OctoPrint for printing over WiFi.

#### Other Slicers
Here’s a quick list of other slicers, but I haven’t seen anyone mention settings to be used with them. Will update this document with Forum links if I come across them, or someone recommends them. You can try using the same settings from Cura / S3D as a starting point for these as well.

**Slic3r** - http://slic3r.org/
**Repetier** - https://www.repetier.com/
**CraftWare** - https://craftunique.com/craftware

There are plenty of [other options for slicing](https://all3dp.com/best-3d-slicer-software-3d-printer/), but these are the most popular ones that I’m aware of. If you feel another should be added to the list, and you have some settings for it, please add a comment in the [forums](http://www.kodamaforums.com/phpBB3/viewtopic.php?f=21&t=1627).