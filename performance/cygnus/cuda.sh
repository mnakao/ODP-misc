#!/bin/bash
#PBS -A XMP
#PBS -q gpu
#PBS -b 1
#PBS -l elapstim_req=00:10:00
#PBS -o cuda.txt
#PBS -j o

cd $PBS_O_WORKDIR
ODP_PROFILE=1 ./cuda_general.x g25000s1.edges

