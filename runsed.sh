#!/bin/bash

# Print the current working directory
pwd

# Set the version
VERSION="1.2.13"
echo "Version: $VERSION"

PATCH=17
echo "Major: $PATCH"



echo "Updating Source/ScooterUtils/Public/ScooterUtilsVersion.h"
sed -i 's/#define VERSION_PATCH [0-9]*/#define VERSION_PATCH '"$PATCH"'/' Source/ScooterUtils/Public/ScooterUtilsVersion.h
if [ $? -eq 0 ]; then echo "uplugin VersionName updated successfully"; else echo "Failed to update uplugin VersionName"; fi

# Print the contents of the header file after updating
echo "Contents of Source/ScooterUtils/Public/ScooterUtilsVersion.h after update:"
cat ./Source/ScooterUtils/Public/ScooterUtilsVersion.h

# Update the uplugin file
#echo "Updating ScooterUtils.uplugin"
#sed -i "s/\"VersionName\": \"v[0-9]*\.[0-9]*\.[0-9]*\"/\"VersionName\": \"v$VERSION\"/" ScooterUtils.uplugin
#if [ $? -eq 0 ]; then echo "uplugin VersionName updated successfully"; else echo "Failed to update uplugin VersionName"; fi

## Print the contents of the uplugin file after updating
#echo "Contents of ScooterUtils.uplugin after update:"
#cat ./ScooterUtils.uplugin


echo


