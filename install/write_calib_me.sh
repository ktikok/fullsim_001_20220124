ccalib=`python -c "print( (1018.0 / 17.3700))"`
scalib=`python -c 'print((17510.0 / 17.3700))'`

# after run analysis. apply the below codes. You must change the scale factors.
ccalib=`python -c "print($ccalib * 19.14 / 20)"`
scalib=`python -c "print($scalib * 19.78 / 20)"`

ccalib=${ccalib:0:7}
scalib=${scalib:0:7}

echo "1 $ccalib $scalib" > calib_new.csv



for ((i=2;i<=92;i++))
    
    do
        echo "$i $ccalib $scalib" >> calib_new.csv
    done