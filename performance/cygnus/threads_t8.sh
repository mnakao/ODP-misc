#!/bin/bash
#PBS -A XMP
#PBS -q gpu
#PBS -b 1
#PBS -l elapstim_req=01:30:00
#PBS -o threads_t8.txt
#PBS -j o
#PBS -v OMP_NUM_THREADS=8

cd $PBS_O_WORKDIR
ODP_PROFILE=1 numactl --cpunodebind=0 ./threads_general.x g25000s1.edges


