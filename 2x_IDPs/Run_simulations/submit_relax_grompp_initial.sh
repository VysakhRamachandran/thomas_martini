#!/bin/bash


for protein in aSyn FUS htau40 p15PAF
do

t=0

if [[ "$protein" == "FUS" || "$protein" == "p15PAF" ]]
then
        t=298
fi

if [[ "$protein" == "aSyn" ]]
then
        t=283
fi

if [[ "$protein" == "htau40" ]]
then
        t=278
fi

cd two_${protein}_init

qsub ../relax_grompp.sh -v temp=$t

cd ..

done


