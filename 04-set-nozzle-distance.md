
## Set Nozzle Distance

Now that we have all the **Pre-Check** steps complete, we can start the process of getting your nozzle set up so that you have a successful first print.

> ##### WARNING {.warning}
> Please make sure the nozzle is cool (Cyan LED on Control Board) before performing this process. That way you don’t accidentally melt your non-heated bed (image below), the BuildTak material, or damage your Heated Bed.
> 
> <div>
> ![Damaged normal bed from hot nozzle](chapter-04-set-nozzle-distance/img/trinus-non-heated-bed-burns-claus.png)
> *Image provided by Claus Olesen*
> </div>

* Connect to your Printer via Pango, and go to the Console (See [USB Connection](#setup-usb-connection) section).
* Click on the Home button to move the extruder assembly into place. The tip of the nozzle may align a few millimeters in front of the build plate, we’ll save that for later, let’s get printing first. ![Pango - console home button](chapter-04-set-nozzle-distance/img/pango-console-home.png)
* You want the Nozzle about 2 pieces of paper away from the build plate (0.2mm). ![Nozzle distance](chapter-04-set-nozzle-distance/img/trinus-nozzle-distance.png)
* If the distance isn’t quite right, we will need to set the Offset value for the “Z” axis within Pango. Click on the “Offset” button in the Pango Console window. Positive Numbers moves the nozzle closer to the bed, Negative Numbers moves it away. This can have a **max value of -1.5mm to 1.5mm**. If you can’t get it adjusted perfecting with that in mind, see the [Adjusting Offset Screws](#adjust-the-offset-screws) section. ![Pango - console z-offset](chapter-04-set-nozzle-distance/img/pango-console-offsets-z.png)
* Set the value in small increments (0.01mm), then click the Home button again, repeat until your pieces of paper can slide under the nozzle but have a little bit of tension. ![Nozzle distance paper check](chapter-04-set-nozzle-distance/img/trinus-nozzle-paper-check.png)
* All done, let’s get printing.
