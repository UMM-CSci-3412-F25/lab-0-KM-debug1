#!/usr/bin/env bash

# Save the script's first command-line argument
num="$1"

# Extract the gzip-compressed tar archive
tar --extract --gzip --file=NthPrime.tgz

# Move into the directory created by extracting the archive
cd NthPrime || exit 1

# Compile and link both C source files into an executable
gcc main.c nth_prime.c --output=NthPrime

# Run the newly compiled executable and pass along the original command-line argument
./NthPrime "$num"

# To give it executable permissions if needed:
# chmod +x extract_and_compile.sh