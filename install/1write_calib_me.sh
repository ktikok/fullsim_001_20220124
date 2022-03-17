ccalib=`python -c "print( (1329.0 / 15.7700))"` # hit/edep energy for GeV unit
scalib=`python -c 'print((19780.0 / 15.7700))'` 

# after run analysis. apply the below codes. You must change the scale factors. use fit mean value
cccalib=`python -c "print($ccalib * 19.28 / 20)"`
sscalib=`python -c "print($scalib * 19.80 / 20)"`

ccalib=${ccalib:0:7}
scalib=${scalib:0:7}

# echo "1 $ccalib $scalib" > equal_cons.csv
# echo "1 $ccalib $scalib" > calib.csv

# echo "1 $cccalib $sscalib" > calib_new2.csv
echo "1 $cccalib $sscalib" > calib.csv



for ((i=2;i<=92;i++))
    
    do
        # echo "1 $ccalib $scalib" >> calib.csv
        # echo "$i $ccalib $scalib" >> equal_cons.csv
        # echo "$i $cccalib $sscalib" >> calib_new2.csv
        echo "$i $cccalib $sscalib" >> calib.csv
    done