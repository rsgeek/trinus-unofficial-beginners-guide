
## Laser Engraving

### Pre-Check
**Safety First:** <br/>
Your Laser Engraver should have come with some Green Safety Glasses, please wear these the ENTIRE time you are around the laser while it’s on. The last thing you want to do is lose an eye because you thought, “It’ll never happen to me.”

##### JUST WEAR THEM ALREADY...no seriously, I’ll wait. {.warning}

**Official Video: Laser Installation and Usage** <br/>
Here’s a little video on how to install the laser assembly and the basics of getting it set up. <br/>
<https://vimeo.com/album/4289066/video/196594883>

**Check Firmware** <br/>
There was an update to the firmware that fixes an issue with the laser staying on after click on the stop / pause button. So you will want to ensure you have the latest firmware (v3.5.6+)  installed before using the Laser Engraver (see [Update Firmware](#update-firmware) section).

**Do you have all the parts?** <br/>
Just a quick confirmation that you have the 3 items needed to start your laser engraving adventure; Laser, Laser Mount, and Safety Glasses. If for some reason you didn’t get a Mount, you can print a copy of it, the file is available in the [Downloads](#download-it) section, OR you can print the **fixed** one referenced in the [Maximize Laser Build Area](#maximize-build-area---laser-engraving) section.
![Laser components](chapter-07-laser-engraving/img/laser-components.png)


### Installation
#### Disconnect Extruder Assembly
* Let’s start by loading up the Pango Console (see [USB Connection](#setup-usb-connection) section).
* Home the extruder head so the printer knows where all the axes currently are. ![Pango - console home](chapter-07-laser-engraving/img/pango-console-home.png)
* Now move the Z axis up to about 30mm, then the X to around 60mm. ![Pango - console move x-y](chapter-07-laser-engraving/img/pango-console-move-x-z.png)
* This is to give us a little bit of room while we remove the extruder. ![Move extruder](chapter-07-laser-engraving/img/machine-extruder-space.png)
* **Unplug the Power**
* Now we can turn the machine around (remove enclosure if you have this installed) and disconnect all the wires for the Extruder Assembly. You should see 2x Blue, 2x White, and a Black connector. Please pull them out by the connector (plastic part) and not the wires, as this can cause them to break or come loose. ![PCB extruder connections](chapter-07-laser-engraving/img/back-of-pcb-extruder-removal.png)
* Now it’s time to unscrew the top 2 screws holding the Extruder Assembly to the X-axis. ![Remove extruder screws](chapter-07-laser-engraving/img/machine-remove-extruder-screws.png)
* Set the Extruder Assembly aside while we install the laser.

> ##### Tip: Why Disconnect the Extruder?
> While testing the Laser Engraver a community member had left the extruder connected and he quickly discovered that there is a bug in the current firmware that turns on the Heater for the Extruder while engraving. 
> 
> This may be fixed in the future, but I would consider it a “**Best Practice**” to completely remove the attachments that you aren’t currently using.

#### Attach the Laser
* Start by attaching the mount for the laser using the 2 screws you removed when disconnecting the Extruder Assembly. ![Laser mount](chapter-07-laser-engraving/img/laser-mount-installed.png)
* Now clip the Laser Engraver into the mount. ![Laster mounted](chapter-07-laser-engraving/img/laser-installed-in-mount.png)
* Connect to the cable to the PCB, small black connector right above the white LCD connection. ![Connect laser to PCB](chapter-07-laser-engraving/img/pcb-view-with-laser-connection.png)
* All installed. Time for those Safety Glasses. ![IMG ALT](chapter-07-laser-engraving/img/safety-glasses-wear.png)

#### Pango Setup
In order to start using Pango to slice your images for engraving, you will first need to tell Pango that you’ve installed this tool head.

* Go into Preference -> Preferences (Windows) or Pango -> Preferences (Mac) and change the “Printer Select” to “Trinus Laser” ![Pango - change printer type](chapter-07-laser-engraving/img/pango-preferences-printer.png)
* Pango will now tell you it needs to restart, click Ok and let it restart. If you’re on a Mac, Pango doesn’t automatically re-open so you will need to open it back up and it should be in Laser Engraving Mode.
* You will see a whole new set of Settings available for the engraving process (discussed below). ![Pango - laser settings](chapter-07-laser-engraving/img/pango-laser-settings.png)


#### Pango Laser Settings
* **Print Speed** <br/> 
This is the speed at which the laser is moving while on/engraving. If you are working with Dense material (ie, Maple Wood), you’ll want to slow this down, and of course you have the option to speed up for Soft materials (ie, Balsa Wood). You can also speed this value up if you want the engraved area to be a bit lighter (less burned) as it will have less time to do it’s magic.
* **Laser At Height** <br/> 
The laser can focus anywhere from 80-100mm away from the material you plan on engraving. So you will need to adjust this value to the height of the material (in millimeters) you are using + the focusing distances of 80-100mm.
* **Bright Threshold** <br/> 
This value will let you determine if an area of your picture is considered a Dark area or a Light area, since Pango currently doesn’t support Grayscale, you get to determine if the pixel will show up in the final product. You can see this in action in the official video provided above at around the [4min mark](https://vimeo.com/196594883#t=240s).
* **Reversed Bright** <br/> 
Toggle to choose if you want the Light or Dark areas of your image engraved. By default this is unchecked and the Light colors areas will be burned into the material.
* **Infill Rate** <br/> 
For large areas that need to be engraved, you can choose how much of this area you actually want burned into the material. For example if you choose 50%, then only half of the infill area will be burned onto the material.
* **Infill Speed** <br/> 
This is exactly like the Print Speed but it applies to the Infill. If you want the infill to be a lighter color than the outline (which is what the Print Speed is for), then you can simply increase the speed of this value, Or set it the same as the Print Speed if you want them both to be a uniform shade.

### How to Focus
For focusing your laser, you should watch how this is done in the official video.

> ##### WARNING {.warning}
> Some materials will give off toxic fumes, as one user discovered when engraving Chromed Leather. So if you plan on venturing out beyond your standard Wood blocks, I’d suggest doing some google searches on that specific material to ensure it’s safe to burn.

**Trinus - Laser Installation and Usage** <br/>
[https://vimeo.com/196594883#t=389s
![Laser install and usage video](chapter-07-laser-engraving/img/video-official-laser-install-usage.png)
](https://vimeo.com/196594883#t=389s)

Now that you are all focused up, time to start finding things around the house to engrave (see <span class="warning">**WARNING**</span> above about choosing materials).

> ##### Tip: 10 Tips and Tricks
> Stumbled across this Instructable on various tips and tricks when working with laser engravers. Some good information if you are completely new to laser engraving. 
<http://www.instructables.com/id/10-Tips-and-Tricks-for-Laser-Engraving-and-Cutting/>
