#!/bin/bash

export VERSION='7.6.11'
export ROOTDIR='/var/www/typo3-no-composer'

# Remove old files
rm -rf $ROOTDIR/*

# Fetch TYPO3
cd $ROOTDIR
wget --quiet get.typo3.org/$VERSION --content-disposition

# Extract packages and remove tar.gz
tar -xzf typo3_src-$VERSION.tar.gz
rm typo3_src-$VERSION.tar.gz

# Creating symlinks
ln -nfs typo3_src-$VERSION/ typo3_src
ln -nfs typo3_src/typo3 typo3
ln -nfs typo3_src/index.php index.php

# Enable first install
touch FIRST_INSTALL
