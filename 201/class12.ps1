# setting the Variable
$ip = ipconfig /all
# Calling the Function to save as a .txt file
$ip > C:\Users\codys\Documents\network_report.txt
# Displaying the ip4 line in the saved file
Select-String -Path "C:\Users\codys\Documents\network_report.txt" -Pattern "IPv4 Address" 
