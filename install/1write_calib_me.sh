ccalib=`python -c "print( (1535.0 / 23.1700))"` # hit/edep energy for GeV unit
scalib=`python -c 'print((26310.0 / 23.1700))'` 

# after run analysis. apply the below codes. You must change the scale factors. use fit mean value
cccalib=`python -c "print($ccalib * 25.54 / 30)"`
sscalib=`python -c "print($scalib * 26.43 / 30)"`

ccalib=${ccalib:0:7}
scalib=${scalib:0:7}

# echo "1 $ccalib $scalib" > equal_cons.csv

##############33
# echo "1 $ccalib $scalib" > calib.csv
##############33

# echo "1 $cccalib $sscalib" > calib_new2.csv

##############33
echo "1 $cccalib $sscalib" > calib.csv
##############33



for ((i=2;i<=92;i++))
    
    do
        ##############33
        # echo "1 $ccalib $scalib" >> calib.csv
        ##############33
        
        # echo "$i $ccalib $scalib" >> equal_cons.csv
        # echo "$i $cccalib $sscalib" >> calib_new2.csv
        
        ##############33
        echo "$i $cccalib $sscalib" >> calib.csv
        ##############33

    done