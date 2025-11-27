#!/bin/bash

wget   --no-check-certificate https://www.transeurotrail.org/wp-content/uploads/gpxsync/AL.gpx
wget   --no-check-certificate https://www.transeurotrail.org/wp-content/uploads/gpxsync/AND.gpx
wget   --no-check-certificate https://www.transeurotrail.org/wp-content/uploads/gpxsync/A.gpx
wget   --no-check-certificate https://www.transeurotrail.org/wp-content/uploads/gpxsync/BY.gpx
wget   --no-check-certificate https://www.transeurotrail.org/wp-content/uploads/gpxsync/B.gpx
wget   --no-check-certificate https://www.transeurotrail.org/wp-content/uploads/gpxsync/BIH.gpx
wget   --no-check-certificate https://www.transeurotrail.org/wp-content/uploads/gpxsync/BG.gpx
wget   --no-check-certificate https://www.transeurotrail.org/wp-content/uploads/gpxsync/HR.gpx
wget   --no-check-certificate https://www.transeurotrail.org/wp-content/uploads/gpxsync/DK.gpx
wget   --no-check-certificate https://www.transeurotrail.org/wp-content/uploads/gpxsync/EST.gpx
wget   --no-check-certificate https://www.transeurotrail.org/wp-content/uploads/gpxsync/F.gpx
wget   --no-check-certificate https://www.transeurotrail.org/wp-content/uploads/gpxsync/FIN.gpx
wget   --no-check-certificate https://www.transeurotrail.org/wp-content/uploads/gpxsync/D.gpx
wget   --no-check-certificate https://www.transeurotrail.org/wp-content/uploads/gpxsync/GE.gpx
wget   --no-check-certificate https://www.transeurotrail.org/wp-content/uploads/gpxsync/GR.gpx
wget   --no-check-certificate https://www.transeurotrail.org/wp-content/uploads/gpxsync/H.gpx
wget   --no-check-certificate https://www.transeurotrail.org/wp-content/uploads/gpxsync/I.gpx
wget   --no-check-certificate https://www.transeurotrail.org/wp-content/uploads/gpxsync/L.gpx
wget   --no-check-certificate https://www.transeurotrail.org/wp-content/uploads/gpxsync/LT.gpx
wget   --no-check-certificate https://www.transeurotrail.org/wp-content/uploads/gpxsync/LV.gpx
wget   --no-check-certificate https://www.transeurotrail.org/wp-content/uploads/gpxsync/MD.gpx
wget   --no-check-certificate https://www.transeurotrail.org/wp-content/uploads/gpxsync/MNE.gpx
wget   --no-check-certificate https://www.transeurotrail.org/wp-content/uploads/gpxsync/NMK.gpx
wget   --no-check-certificate https://www.transeurotrail.org/wp-content/uploads/gpxsync/NL.gpx
wget   --no-check-certificate https://www.transeurotrail.org/wp-content/uploads/gpxsync/N.gpx
wget   --no-check-certificate https://www.transeurotrail.org/wp-content/uploads/gpxsync/PL.gpx
wget   --no-check-certificate https://www.transeurotrail.org/wp-content/uploads/gpxsync/P.gpx
wget   --no-check-certificate https://www.transeurotrail.org/wp-content/uploads/gpxsync/RKS.gpx
wget   --no-check-certificate https://www.transeurotrail.org/wp-content/uploads/gpxsync/RO.gpx
wget   --no-check-certificate https://www.transeurotrail.org/wp-content/uploads/gpxsync/SRB.gpx
wget   --no-check-certificate https://www.transeurotrail.org/wp-content/uploads/gpxsync/SK.gpx
wget   --no-check-certificate https://www.transeurotrail.org/wp-content/uploads/gpxsync/SLO.gpx
wget   --no-check-certificate https://www.transeurotrail.org/wp-content/uploads/gpxsync/E.gpx
wget   --no-check-certificate https://www.transeurotrail.org/wp-content/uploads/gpxsync/S.gpx
wget   --no-check-certificate https://www.transeurotrail.org/wp-content/uploads/gpxsync/CH.gpx
wget   --no-check-certificate https://www.transeurotrail.org/wp-content/uploads/gpxsync/TR.gpx
wget   --no-check-certificate https://www.transeurotrail.org/wp-content/uploads/gpxsync/GB.gpx
wget   --no-check-certificate https://www.transeurotrail.org/wp-content/uploads/gpxsync/UA.gpx

git diff --exit-code
if [ $? -ne 0 ];
then
    echo "Committing the differences"
    git add --ignore-removal *.gpx
    export V_NOW=`date +"%Y%m%d"`
    git commit -m "$V_NOW TET"
    git push -u origin master
fi
