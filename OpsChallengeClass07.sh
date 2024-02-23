#!/bin/bash

# Script Name:                  Class 07
# Author:                       Cody Blahnik
# Date of latest revision:      2/23/2024
# Purpose:                      view harware and software on pc



# Display information about the Name of the computer
echo "Computer Name:"
hostname

# Display information about CPU
echo "CPU Information:"
lshw -class cpu | grep -E "product|vendor|physical id|bus info|width" | tr '[:upper:]' '[:lower:]'

# Display information about RAM
echo "RAM Information:"
lshw -class memory | grep -E "description|physical id|size" | tr '[:upper:]' '[:lower:]'

# Display information about Display adapter
echo "Display adapter Information:"
lshw -class display | grep -E "description|product|vendor|physical id|bus info|width|clock|capabilities|configuration|resources" | tr '[:upper:]' '[:lower:]'

# Display information about Network adapter
echo "Network adapter Information:"
lshw -class network | grep -E "description|product|vendor|physical id|bus info|logical name|version|serial|size|capacity|width|clock|capabilities|configuration|resources" | tr '[:upper:]' '[:lower:]'

# End

