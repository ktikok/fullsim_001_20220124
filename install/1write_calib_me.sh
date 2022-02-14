ccalib=`python -c "print( (661.1 / 18.5600))"` # hit/edep energy for GeV unit
scalib=`python -c 'print((11150.0 / 18.5600))'` 

# after run analysis. apply the below codes. You must change the scale factors. use fit mean value
# ccalib=`python -c "print($ccalib * 19.39 / 20)"`
# scalib=`python -c "print($scalib * 19.64 / 20)"`

ccalib=${ccalib:0:7}
scalib=${scalib:0:7}

echo "1 $ccalib $scalib" > calib_new1.csv
# echo "1 $ccalib $scalib" > calib_new2.csv



for ((i=2;i<=92;i++))
    
    do
        echo "$i $ccalib $scalib" >> calib_new1.csv
        # echo "$i $ccalib $scalib" >> calib_new2.csv
    done