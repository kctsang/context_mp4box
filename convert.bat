@echo off
set fullfilename=%1
set filename=%fullfilename:~0,-5%

copy %fullfilename% .\temp.mp4
"D:\Dropbox\Public\Resources\MP4Box-0.4.6-dev_20090226\MP4Box" -single 2 temp.mp4 -out temp.m4a
copy temp.m4a.mp4 %filename%.m4a

del temp.mp4
del temp.m4a.mp4