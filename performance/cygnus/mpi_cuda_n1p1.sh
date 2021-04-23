#!/bin/bash
#PBS -A XMP
#PBS -q gpu
#PBS -b 1
#PBS -l elapstim_req=00:10:00
#PBS -T openmpi
#PBS -v NQSV_MPI_VER=3.1.6/gcc8.3.1-cuda10.2
#PBS -o mpi_cuda_n1p1.txt
#PBS -j o

cd $PBS_O_WORKDIR
ODP_PROFILE=1 mpirun ${NQSII_MPIOPTS} -np 1 -npernode 4 ./numa.sh ./mpi_cuda_general.x g25000s1.edges


