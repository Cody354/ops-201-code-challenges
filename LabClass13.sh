#!/bin/bash

# Script Name:                  Ops Challenge - Arrays
# Author:                       Cody Blahnik
# Date of latest revision:      1/24/2024
# Purpose:                      Domain Analyzer


# Write a script that:
# For this challenge you must use at least one variable and one function.
# Take a user input string. Presumably the string is a domain name such as Google.com.
read -p "What domain are we searching today?" domain
# Run whois against a user input string.
whois $domain > InformationOnDomain.txt
# Run dig against the user input string.
dig $domain >> InformationOnDomain.txt
# Run host against the user input string.
host $domain >> InformationOnDomain.txt
# Run nslookup against the user input string.
nslookup $domain >> InformationOnDomain.txt
# an extra tool
curl -s "https://api.dnsdumpster.com/v1/search/$domain" >> InformationOnDomain.txt
# Output the results to a single .txt file and open it with your favorite text editor.
# nano InformationOnDomain.txt













# Main



# End

