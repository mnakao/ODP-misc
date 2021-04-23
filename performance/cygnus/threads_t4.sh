#!/bin/bash
#PBS -A XMP
#PBS -q gpu
#PBS -b 1
#PBS -l elapstim_req=01:30:00
#PBS -o threads_t4.txt
#PBS -j o
#PBS -v OMP_NUM_THREADS=4

cd $PBS_O_WORKDIR
ODP_PROFILE=1 numactl --cpunodebind=0 ./threads_general.x g25000s1.edges


