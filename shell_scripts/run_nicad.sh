#!/bin/sh
IFS=$'\n'
set -f
for repo in $(cat < "$1"); do
        echo "Processing nicad type 1 blocks on $i"
        ./nicad5 blocks py ../repositories/$repo type1-custom
        echo "Processing nicad type 1 functions on $i"
        ./nicad5 functions py ../repositories/$repo type1-custom

        echo "Processing nicad type 2 blocks on $i"
        ./nicad5 blocks py ../repositories/$repo type2-custom
        echo  "Processing nicad type 2 functions on $i"
        ./nicad5 functions py ../repositories/$repo type2-custom

        echo "Processing nicad type 3 blocks on $i"
        ./nicad5 blocks py ../repositories/$repo type3-custom
        echo "Processing nicad type 3 functions on $i"
        ./nicad5 functions py ../repositories/$repo type3-custom
done
