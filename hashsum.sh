#!/bin/sh

# Check if a file name is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <file>"
    exit 1
fi

# Assign the file name to a variable
FILE=$1

# Check if the file exists
if [ ! -f "$FILE" ]; then
    echo "File not found: $FILE"
    exit 1
fi

# Generate and output various hashes
echo "MD5:    $(md5sum $FILE | awk '{ print $1 }')"
echo "SHA1:   $(sha1sum $FILE | awk '{ print $1 }')"
echo "SHA256: $(sha256sum $FILE | awk '{ print $1 }')"
echo "SHA512: $(sha512sum $FILE | awk '{ print $1 }')"
