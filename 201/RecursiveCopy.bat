@echo off

set /p sourceFolder="Enter the source folder path: "

set /p destinationFolder="Enter the destination folder path: "



rem Check if source folder exists

if not exist "%sourceFolder%" (

    echo Source folder does not exist. Please provide a valid path.

    pause

    exit /b 1

)



rem Check if destination folder exists, create if not

if not exist "%destinationFolder%" mkdir "%destinationFolder%"



rem Use ROBOCOPY to copy files and subdirectories

robocopy "%sourceFolder%" "%destinationFolder%" /e



rem Display completion message

echo Files and subdirectories copied successfully.

pause

#you probably would use this for system back ups. In case something goese wornd with a hard drive you woul;d have back ups
