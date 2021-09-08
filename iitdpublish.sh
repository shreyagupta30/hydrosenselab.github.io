#!/bin/sh

echo "Removing existing files"
rm -rf docs/*

echo "Generating site"
hugo

scp -r docs/* msaharia@hydrosense.iitd.ac.in:/var/www/hydrosense/https/html
