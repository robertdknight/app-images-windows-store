#!/usr/bin/env bash

# argument one is the file name
# argument two is the app name
# argument three is 'square' or 'wide'
# usage:  widesize image.jpg Osmhic_Calculator


# This example resizes an image to specific dimensions
# the exclamation point forces the exact dimensions even if
# it messes up the aspect ratio.  Without the !, the image fits
# in the desired dimensions instead
#
# convert example.png -resize 200×100! example.png


echo working with $1 for app $2.
echo

mkdir $2
mkdir $2-tar
convert $1 $2/widebase.png

# Show name:
mkdir $2/name

convert $1 -resize 310x150! $2/name/310x150.png

# Wide 310x150

mkdir $2/wide310x150
convert $1 -resize 1240x600! $2/wide310x150/1240x600.png
convert $1 -resize 620x300! $2/wide310x150/620x300.png
convert $1 -resize 310x150! $2/wide310x150/310x150.png
convert $1 -resize 465x225! $2/wide310x150/465x225.png
convert $1 -resize 388x188! $2/wide310x150/388x188.png


# Splash Screen
mkdir $2/splashscreen
convert $1 -resize 2480x1200! $2/splashscreen/2400x1200.png
convert $1 -resize 1240x600! $2/splashscreen/1240x600.png
convert $1 -resize 930x450! $2/splashscreen/930x450.png
convert $1 -resize 775x375! $2/splashscreen/775x375.png
convert $1 -resize 620x300! $2/splashscreen/620x300.png

tar -czpvf $2-tar/$2-widesized.tar.gz $2
mkdir /var/www/html/store/$2
mv $2-tar/$2-widesized.tar.gz /var/www/html/store/$2

