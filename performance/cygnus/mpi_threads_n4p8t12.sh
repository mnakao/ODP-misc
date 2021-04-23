#!/bin/bash
#PBS -A XMP
#PBS -q gpu
#PBS -b 4
#PBS -l elapstim_req=01:30:00
#PBS -T openmpi
#PBS -v NQSV_MPI_VER=3.1.6/gcc8.3.1-cuda10.2
#PBS -v OMP_NUM_THREADS=12
#PBS -o mpi_threads_n4p8t12.txt
#PBS -j o

cd $PBS_O_WORKDIR
ODP_PROFILE=1 mpirun ${NQSII_MPIOPTS} -np 8 -npernode 2 --bind-to socket ./mpi_threads_general.x g25000s1.edges

