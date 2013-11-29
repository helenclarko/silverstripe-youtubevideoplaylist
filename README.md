###############################################
You Tube Video playlist Module v0.1
###############################################

Maintainer Contact
-----------------------------------------------
Sam Coursey
<helenclarko (at) gmail (dot) com>

Requirements
-----------------------------------------------
Silverstripe 2.4.*

Documentation
-----------------------------------------------

Installation Instructions
-----------------------------------------------
1. Unzip this file inside your SilverStripe installation directory.
It should be at the same level as the 'cms' and 'sapphire' modules.

2. Ensure the directory name for the module is 'youtubevideoplaylist'. 

3. Visit your SilverStripe site in a webbrowser and run www.yoursite.com/dev/build

Usage Overview
-----------------------------------------------
This module will create a playlist for your youtube videos.
the "src=" for the embeded youtube video is swapped out with jQuery.

Currently there is only one layout, which is to have the playlist attached to the right side of the youtube video

You can however change the layout manually by editing the inline CSS, which is in the YouTubeVideoPage.ss file.

How to get the URL Code
-----------------------------------------------
The URL is the unique identification code from the videos web address.
for example, if the videos web address is as follows:

http://www.youtube.com/watch?v=FG45SDqwsFQ"

You would take the following:

FG45SDqwsFQ

Known issues/Future updates:
-----------------------------------------------
1. Update code for 3.0
2. Create more layouts and add a layout selection menu
3. Add showing and hiding of the playlist menu toggle
4. Allow for the user to change whether the playlist is showen on page load
5. Add custom scroll bars

