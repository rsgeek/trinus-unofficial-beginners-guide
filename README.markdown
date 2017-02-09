# Trinus - The Unofficial Beginners Guide

This will enable Trinus owners that would like to contribute to the guide a better option via [Github Pull Requests](https://gist.github.com/Chaser324/ce0505fbed06b947d962).

You can also view the guide online using the Github Pages feature:

<https://drofnas.github.io/trinus-unofficial-beginners-guide/>

The latest compiled **PDF** document can be found in the [download](https://github.com/drofnas/trinus-unofficial-beginners-guide/tree/master/download) folder.



## Style Guide

This will go over the various styles/layout that are used throughout the Guide so that all contributions stay with the same format and it keeps a uniform look and feel.

### Text / Layout

For now, until this section of the style guide is flushed out, just copy the same style as the rest of the guide. It should cover the majority of things needed. Here's a [Markdown Cheatsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) to help with any syntax not already used in the guide.

### Images

The original images (`orig` folder) are 3000px x 1500px (2:1) size. Then the images that are used in the document are just a reduction in size to 800px x 400px. If you want to have shorter height to your image, then you can create with a 4:1 ratio (3000px x 750px -> 800px x 200px).

Original Images (**PNG / JPG / PSD**):

* 3000px x 1500px (2:1)
* 3000px x 750px (4:1)

HTML / PDF Images (**PNG / JPG**):

* 800px x 400px (2:1)
* 800px x 200px (4:1)

#### Optimize Images

First thing you need to do is create the redued sized images (800 width) so that they can be optimized. All images should be uploaded to [TinyPNG.org](https://tinypng.com/) for processing. This process will reduce the file size of each image by as much as 70%. 

* Drag and drop images on to the website.
* Download the optimized version.
* Overwrite the images that you created for use for the HTML/PDF files (800w).



## Compiling

The HTML file is compiled using Pandoc (http://pandoc.org/index.html), see their website on how to install it on your machine. This will enable you to compile the latest development branch of this guide.

### Generate HTML
Make sure to get Pandoc (http://pandoc.org/index.html) installed first so that you can run the following command. The exact command may vary depending on your OS; this was what was run in OSX. See their website for OS specific changes to the command:

    pandoc *.md > docs/index.html --css helpers/style.css

### Generate PDF

* First generate the HTML using Pandoc above.
* Open the HTML file in Chrome.
* Click on File -> Print
* Change your Destination (or Printer) to "Save as PDF"
* Click the Save button to save it locally.

