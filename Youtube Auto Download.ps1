# Name: Youtube-dl Auto Save
# Objective: To automate the video download process using the youtube-dl executable available at youtube-dl.org in order to 
#            mimic the convinience of the linux version of the application by doing all the command typing to the script rather
#            than letting the user type it down (because typing is a hassel for windows users) 
#
# Creator: Dfaults
# Date of development: 3/3/2017
#
# IMPORTANT!!: The folder in which you are going to save the video to must not contain any whitespaces otherwise the script 
#              will throw an error.

# Read-Host reads user input and with its argument -Prompt it will first diplay a message to the user before accepting input.
# This method is used for the directory and link variables.
$directory = Read-Host -Prompt 'Enter where you would like to save your file'

$link = Read-Host -Prompt 'Now enter the link to the video to download'

# The Move-Item cmlet will move a file from directory A to B. just keep in mind that both directories need to be seperated by a
# whitespace in order to be seen as two directories instead of one.
Move-Item D:\jfel7\Videos\Demon King Series\youtube-dl.exe $directory

# The '&' symbol is used to execute commands within powershell. In this case the it takes a directory as an argument.
& cd $directory

# This is the downloader itself. It needs the link in order to download the video the --ignore-errors argument is already
# concatinated within the link variable just to make things simple.
& $directory + youtube-dl.exe + $link
