#!/bin/bash

# Print the current working directory
pwd

# Set the version
VERSION="1.2.13"
echo "Version: $VERSION"

# Update the uplugin file
echo "Updating ScooterUtils.uplugin"
sed -i "s/\"VersionName\": \"v[0-9]*\.[0-9]*\.[0-9]*\"/\"VersionName\": \"v$VERSION\"/" ScooterUtils.uplugin
if [ $? -eq 0 ]; then echo "uplugin VersionName updated successfully"; else echo "Failed to update uplugin VersionName"; fi

# Print the contents of the uplugin file after updating
echo "Contents of ScooterUtils.uplugin after update:"
cat ./ScooterUtils.uplugin