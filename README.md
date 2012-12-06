Readme
==============

Overview
--------------
Registry to install Windows context menu item, which run .bat script that in turn run MP4BOX to extract M4A from MP4 file.  
File will be extracted as <original filename>.m4a, at same directory of original MP4 file.

Requirement
--------------
MP4Box binary file

Installation
--------------
1) Download MP4Box  
2) Edit convert.bat, edit path in line 6 to path of MP4Box.exe  
3a) For Windows XP user, edit last line of mp4_shellex_install.reg to path of convert.bat  
3b) For Windows 7 user, edit mp4_shellex_install_win7.reg instead.  
4) Run mp4_shellex_install.reg / mp4_shellex_install_win7.reg to import registry key.  

After installation, right click any MP4 file and "Extract M4A" items should appear.

Uninstallation
--------------
Run mp4_shellex_uninstall.reg or mp4_shellex_uninstall_win7.reg for Windows XP / 7 respectively.

FAQ
--------------
Q: Extracted file is not a valid music file!  
A: Usually audio will put in track 2 of the file, but that may not always correct. If the extracted file is not a valid music file (or video without sound), you can edit convert.bat, change:
"-single 2" to "-single 1" and extract again.

Q: MP4Box do not support non-english character. Anyway workaround?  
A: The batch file use temp file name and parameter provide from Windows, so this extension support non-english filename.

TODO
--------------
Check extracted file by file size?