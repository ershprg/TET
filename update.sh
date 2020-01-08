#!/bin/bash
#wget -N -q https://www.transeurotrail.org/wp-content/uploads/gpxsync/AL.gpx
#wget -N -q https://www.transeurotrail.org/wp-content/uploads/gpxsync/AND.gpx
#wget -N -q https://www.transeurotrail.org/wp-content/uploads/gpxsync/A.gpx
#wget -N -q https://www.transeurotrail.org/wp-content/uploads/gpxsync/BY.gpx
#wget -N -q https://www.transeurotrail.org/wp-content/uploads/gpxsync/B.gpx
#wget -N -q https://www.transeurotrail.org/wp-content/uploads/gpxsync/BIH.gpx
#wget -N -q https://www.transeurotrail.org/wp-content/uploads/gpxsync/BG.gpx
#wget -N -q https://www.transeurotrail.org/wp-content/uploads/gpxsync/HR.gpx
#wget -N -q https://www.transeurotrail.org/wp-content/uploads/gpxsync/DK.gpx
#wget -N -q https://www.transeurotrail.org/wp-content/uploads/gpxsync/EST.gpx
#wget -N -q https://www.transeurotrail.org/wp-content/uploads/gpxsync/FIN.gpx
#wget -N -q https://www.transeurotrail.org/wp-content/uploads/gpxsync/D.gpx
#wget -N -q https://www.transeurotrail.org/wp-content/uploads/gpxsync/GR.gpx
#wget -N -q https://www.transeurotrail.org/wp-content/uploads/gpxsync/H.gpx
#wget -N -q https://www.transeurotrail.org/wp-content/uploads/gpxsync/I.gpx
#wget -N -q https://www.transeurotrail.org/wp-content/uploads/gpxsync/LT.gpx
#wget -N -q https://www.transeurotrail.org/wp-content/uploads/gpxsync/LV.gpx
#wget -N -q https://www.transeurotrail.org/wp-content/uploads/gpxsync/MNE.gpx
#wget -N -q https://www.transeurotrail.org/wp-content/uploads/gpxsync/NL.gpx
#wget -N -q https://www.transeurotrail.org/wp-content/uploads/gpxsync/N.gpx
#wget -N -q https://www.transeurotrail.org/wp-content/uploads/gpxsync/PL.gpx
#wget -N -q https://www.transeurotrail.org/wp-content/uploads/gpxsync/P.gpx
#wget -N -q https://www.transeurotrail.org/wp-content/uploads/gpxsync/RO.gpx
#wget -N -q https://www.transeurotrail.org/wp-content/uploads/gpxsync/SRB.gpx
#wget -N -q https://www.transeurotrail.org/wp-content/uploads/gpxsync/SK.gpx
#wget -N -q https://www.transeurotrail.org/wp-content/uploads/gpxsync/SLO.gpx
#wget -N -q https://www.transeurotrail.org/wp-content/uploads/gpxsync/E.gpx
#wget -N -q https://www.transeurotrail.org/wp-content/uploads/gpxsync/S.gpx
#wget -N -q https://www.transeurotrail.org/wp-content/uploads/gpxsync/CH.gpx
#wget -N -q https://www.transeurotrail.org/wp-content/uploads/gpxsync/TR.gpx
#wget -N -q https://www.transeurotrail.org/wp-content/uploads/gpxsync/GB.gpx
#wget -N -q https://www.transeurotrail.org/wp-content/uploads/gpxsync/UA.gpx

git diff --exit-code
if [ $? -ne 0 ];
then
    echo "Committing the differences"
    git add --ignore-removal *.gpx
    export V_NOW=`date +"%Y%m%d"`
    git commit -m "$V_NOW TET"
fi