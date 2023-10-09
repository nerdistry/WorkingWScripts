#!/bin/bash
# weather.sh

program=weather
version=1.1
year=2023
developer=bella

case $1 in
-h | --help)
        echo "$program $version"
        echo "Copyright $year $developer. All rights reserved."
        echo
        echo "Usage: weather [options]"
        echo "Option          Long Option             Description"
        echo "-h              --help                  Show the help screen"
        echo "-l [location]   --location [location]   Specifies the location"
        ;;
-l | --location)
        curl https://wttr.in/$2
        ;;
*)
        curl https://wttr.in
        ;;
esac
