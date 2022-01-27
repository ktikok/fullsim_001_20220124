# chit=1018
# shit=17510
# edep=17370
# ccalib=chit/edepp
# scalib=shit/edep

# ccalib=$((1018.0 / 17370.0))
ccalib=`python -c "print(1018.0 / 17370.0)"`
scalib=`python -c "print(17510.0 / 17370.0)"`
# scalib=$((17510.0 / 17370.0))
echo "0 $ccalib $scalib" > calib_new.csv
for ((i=1;i<=51;i++))
    
    do
        echo "$i $ccalib $scalib" >> calib_new.csv
    done