#!/bin/bash
#PBS -A XMP
#PBS -q gpu
#PBS -b 2
#PBS -l elapstim_req=01:30:00
#PBS -T openmpi
#PBS -v NQSV_MPI_VER=3.1.6/gcc8.3.1-cuda10.2
#PBS -v OMP_NUM_THREADS=12
#PBS -o mpi_threads_n2p4t12.txt
#PBS -j o

cd $PBS_O_WORKDIR
ODP_PROFILE=1 mpirun ${NQSII_MPIOPTS} -np 4 -npernode 2 --bind-to socket ./mpi_threads_general.x g25000s1.edges

