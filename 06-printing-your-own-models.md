
## Printing Your Own Models

### Fixing Your Models
It’s a good practice to make sure the your STL files, which came from your design programs or online repositories, are free of any issues. There is a good chance you can get away with a bad model in your slicer, but that varies depending on the slicer and what sort of auto-fixing features it has build in. This is the sort of thing that is best seen in action, so I found this great video from Angus at [Maker’s Muse](https://www.youtube.com/channel/UCxQbYGpbdrh-b2ND-AfIybg), using a free application called [MeshMixer](http://www.meshmixer.com/):

**Fixing impossible STL's with Meshmixer** <br/>
[https://www.youtube.com/watch?v=8ECNP3WN_-Q <span>**[ INSERT IMAGE ]**</span>
](https://www.youtube.com/watch?v=8ECNP3WN_-Q)


### Common Pango Settings
Here’s a few basic settings to help you have a successful first print. These options will either be in **Settings** or the **Expert Settings** area. You can find both of these sections listed in the Preferences menu:

#### Settings
* **Enable Supports** <br/> If your model has overhangs, nothing supporting it from below, then you may need to Enable Supports when printing. This could leave some blemishes on your final product, but it will also enable you to have a successful print. <div>**[ INSERT IMAGE ]**</div>
* **Adhesion Helpers** <div>**[ INSERT IMAGE ]**</div>
    * **Rafts** <br/> This can help in 2 ways, if you have a slightly uneven build plate, it will help even things out so that you have a flat surface for your print. It can also help if you need a larger surface area for your print so that it doesn’t fall over / move mid print. You will need to ensure you don’t set to large of a **“Gap Thickness”** (see Expert Settings) as it can reduce this advantage.
    * **Brims** <br/> If you already have a decently flat surface, or your printing on a section of your build plate thats flat enough, you can use a Brim to give you some more holding power. This can also help with preventing warping along the edges of your print, but it will require some clean up after the print is complete.
* **Heated Bed Temperature** <br/> If you have a heated build plate, you will need to set the temperature for this inside of Pango. Normally you will want to set this value to about 50C-60C for lower temp materials, like PLA, then set it to about 100C for higher temp materials like ABS. <div>**[ INSERT IMAGE ]**</div>

> ##### WARNING {.warning}
> If this is turned on and you don’t have a heated build plate, the printer will just wait forever until the non-existent build plate heats up (eject sd card to stop).

#### Expert Settings
* **Raft - Gap Thickness** <br/>
This is the distance you want your raft to be away from your actual model. Some users have noticed the default setting for this makes the rafts a little hard to remove. So it’s probably a good idea to try a value around 0.2mm. <div>**[ INSERT IMAGE ]**</div>

### Start Printing
For the actual printing process, it’s the same thing that has been outlined above in the First Print section.

> ##### Tip: Free 3D Models
> There are plenty of online repositories with free 3D models you can print. One of the most popular sites is [Thingiverse.com](http://www.thingiverse.com/), but here’s a list of other options to find what you’re looking for: [Best Sites for Free STL Files & 3D Printer Files/Models](https://all3dp.com/best-sites-free-stl-files-3d-printing/) 

<!-- -->

> ##### Tip: Autoprint Name Options
> If you are using Pango to slice your models and currently don’t have the LCD add-on, you’ll need to name your file “**autoprint.pcode**” and store that file at the root of the SD Card. If you plan on using some other slicer, then you will need to name the file “**autoprint.gcode**”. Since only Pango creates “pcode” files and just about all the other slicers will give you the standard “gcode” file type.

<!-- -->

> ##### Tip: Try, Fail, Learn
> Try new things and fail often, as you’ll learn so much during this process. 3D Printing at home is still in its infancy, so be prepared to fail as you get to know your printer (no matter the make / model). If you can’t figure out how to solve a problem yourself with the guides listed in the Troubleshooting Print Issues, then please post in the official [Facebook Group](https://www.facebook.com/groups/Trinus3D/) and/or [Forums](http://www.kodamaforums.com/).
