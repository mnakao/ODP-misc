#!/bin/bash
#PBS -A XMP
#PBS -q gpu
#PBS -b 1
#PBS -l elapstim_req=01:30:00
#PBS -o serial.txt
#PBS -j o

cd $PBS_O_WORKDIR
ODP_PROFILE=1 ./general.x g25000s1.edges

