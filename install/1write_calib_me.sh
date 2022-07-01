ccalib=`python -c "print( (1333.0 / 16.6700))"` # hit/edep energy for GeV unit
scalib=`python -c 'print((19880.0 / 16.6700))'` 

# after run analysis. apply the below codes. You must change the scale factors. use fit mean value
ccalib=`python -c "print($ccalib * 19.15 / 20.0)"`
scalib=`python -c "print($scalib * 19.75 / 20.0)"`

ccalib=${ccalib:0:7}
scalib=${scalib:0:7}

# echo "1 $ccalib $scalib" > equal_cons.csv

##############33
# echo "1 $ccalib $scalib" > calib.csv
##############33

# echo "1 $cccalib $sscalib" > calib_new2.csv

##############33
echo "1 $ccalib $scalib" > calib.csv
##############33



for ((i=2;i<=92;i++))
    
    do
        ##############33
        # echo "1 $ccalib $scalib" >> calib.csv
        ##############33
        
        # echo "$i $ccalib $scalib" >> equal_cons.csv
        # echo "$i $cccalib $sscalib" >> calib_new2.csv
        
        ##############33
        echo "$i $ccalib $scalib" >> calib.csv
        ##############33

    done