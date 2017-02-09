# Trinus - The Unofficial Beginners Guide

This will enable Trinus owners that would like to contribute to the guide a better option via [Github Pull Requests](https://gist.github.com/Chaser324/ce0505fbed06b947d962).

You can also view the guide online using the Github Pages feature:

<https://drofnas.github.io/trinus-unofficial-beginners-guide/>

The latest compiled **PDF** document can be found in the [download](https://github.com/drofnas/trinus-unofficial-beginners-guide/tree/master/download) folder.



## Style Guide

This will go over the various styles/layout that are used throughout the Guide so that all contributions stay with the same format and it keeps a uniform look and feel.

### Text / Layout

Just copy the same style as the rest of the guide. It should cover all styles needed in any future updates. Here's a [Markdown Cheatsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) to help with syntax that may not have been used yet in this guide.

### Images

The original images (`orig` folder) are 3000px x 1500px (2:1) size. This way the images that are used in the document are just a reduction in that sie of 800px x 400px. Another option if you need some slightly shorter height to your image, then you can have create with a 4:1 ratio (800px x 200px).

Original Sizes (**PNG / JPG / PSD**):

* 3000px x 1500px (2:1)
* 3000px x 750px (4:1)

HTML / PDF Sizes (**PNG / JPG**):

* 800px x 400px (2:1)
* 800px x 200px (4:1)

#### Optimize Images

First thing you need to do is create the redued sized images (800 width) so that they can be optimized. All images should be optimized using [TinyPNG.org](https://tinypng.com/). 

* Drag and drop images on to the website.
* Download the optimized version.
* Overwrite the images that you created for use for the HTML/PDF files (800w).



## Compiling

The HTML file is compiled using Pandoc (http://pandoc.org/index.html), see their website on how to install it on your machine if you want to compile the current (in progress) version of the document. Then the HTML file is opened inside of Chrome and using the *Save as PDF* feature to create the PDF document.

### Generate HTML
Make sure to get Pandoc (http://pandoc.org/index.html) installed first so that you can run the following command. The exact command may vary depending on your OS; this was what was run in OSX. See their website for OS specific changes to the command:

    pandoc *.md > docs/index.html --css helpers/style.css

### Generate PDF

* First generate the HTML using Pandoc above.
* Open the HTML file in Chrome.
* Click on File -> Print
* Change your Destination (or Printer) to "Save as PDF"
* Click the Save button to save it locally.

