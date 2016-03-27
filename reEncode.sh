#!/bin/bash
#
# Shell script to batch convert encodings
# For a list of supported encodings run iconv -l



OUTPUT=$PATH:/output

	 mkdir -p output

for filename in *.tmx
do
	iconv -f UTF-16LE -t UTF-8 "${filename}" > "output/${filename}_reEncoded.tmx"

cat << "EOF"

 ______     __   __     ______     ______     _____     ______     _____
/\  ___\   /\ "-.\ \   /\  ___\   /\  __ \   /\  __-.  /\  ___\   /\  __-.
\ \  __\   \ \ \-.  \  \ \ \____  \ \ \/\ \  \ \ \/\ \ \ \  __\   \ \ \/\ \
 \ \_____\  \ \_\\"\_\  \ \_____\  \ \_____\  \ \____-  \ \_____\  \ \____-
  \/_____/   \/_/ \/_/   \/_____/   \/_____/   \/____/   \/_____/   \/____/


EOF

echo "--- file(s) reEncoded in output directory! ---"
done