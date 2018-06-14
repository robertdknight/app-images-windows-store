#!/usr/bin/env bash

# argument one is the file name
# argument two is the app name
# argument three is 'square' or 'wide'
# usage:  squaresize image.jpg Osmhic_Calculator

# This example resizes an image to specific dimensions
# the exclamation point forces the exact dimensions even if
# it messes up the aspect ratio.  Without the !, the image fits
# in the desired dimensions instead
#
# convert example.png -resize 200×100! example.png
# https://help.ubuntu.com/community/FileCompression#GNU%20Tar%20(.tar)
# tar -czpvf /home/me/somefile.tar.gz /path/to/files/to/be/archived

echo working with $1 for app $2.
echo

mkdir $2
mkdir $2-tar
convert $1 $2/squarebase.png

# Show name:
mkdir $2/name
convert $1 -resize 150x150! $2/name/square150x150.png
convert $1 -resize 310x310! $2/name/square310x310.png

# Square 71x71 Logo
mkdir $2/square71x71
convert $1 -resize 284x284! $2/square71x71/284x284.png
convert $1 -resize 142x142! $2/square71x71/142x142.png
convert $1 -resize 71x71! $2/square71x71/71x71.png
convert $1 -resize 107x107! $2/square71x71/107x107.png
convert $1 -resize 89x89! $2/square71x71/89x89.png


# Square 150x150 Logo
mkdir $2/square150x150
convert $1 -resize 600x600! $2/square150x150/600x600.png
convert $1 -resize 300x300! $2/square150x150/300x300.png
convert $1 -resize 150x150! $2/square150x150/150x150.png
convert $1 -resize 225x225! $2/square150x150/225x225.png
convert $1 -resize 188x188! $2/square150x150/188x188.png


# Wide 310x310
mkdir $2/wide310x310
convert $1 -resize 1240x1240! $2/wide310x310/1240x1240.png
convert $1 -resize 620x620! $2/wide310x310/620x620.png
convert $1 -resize 310x310! $2/wide310x310/310x310.png
convert $1 -resize 465x465! $2/wide310x310/465x465.png
convert $1 -resize 388x388! $2/wide310x310/388x388.png

# Square 44x44
mkdir $2/square44x44
convert $1 -resize 176x176! $2/square44x44/176x176.png
convert $1 -resize 88x88! $2/square44x44/88x88.png
convert $1 -resize 44x44! $2/square44x44/44x44.png
convert $1 -resize 66x66! $2/square44x44/66x66.png
convert $1 -resize 55x55! $2/square44x44/55x55.png
convert $1 -resize 256x256! $2/square44x44/256x256.png
convert $1 -resize 48x48! $2/square44x44/48x48.png
convert $1 -resize 24x24! $2/square44x44/24x24.png
convert $1 -resize 16x16! $2/square44x44/16x16.png
convert $1 -resize 256x256! $2/square44x44/256x256.png
convert $1 -resize 48x48! $2/square44x44/48x48.png
convert $1 -resize 24x24! $2/square44x44/24x24.png
convert $1 -resize 16x16! $2/square44x44/16x16.png

# Store Logo
mkdir $2/storelogo
convert $1 -resize 200x200! $2/storelogo/200x200.png
convert $1 -resize 100x100! $2/storelogo/100x100.png
convert $1 -resize 75x75! $2/storelogo/75x75.png
convert $1 -resize 63x63! $2/storelogo/63x63.png
convert $1 -resize 50x50! $2/storelogo/50x50.png


# Badge Logo
mkdir $2/badgelogo
convert $1 -resize 96x96! $2/badgelogo/96x96.png
convert $1 -resize 48x48! $2/badgelogo/48x48.png
convert $1 -resize 36x36! $2/badgelogo/36x36.png
convert $1 -resize 30x30! $2/badgelogo/30x30.png
convert $1 -resize 24x24! $2/badgelogo/24x24.png

tar -czpvf $2-tar/$2-squaresized.tar.gz $2
mkdir /var/www/html/store/$2
mv $2-tar/$2-squaresized.tar.gz /var/www/html/store/$2





