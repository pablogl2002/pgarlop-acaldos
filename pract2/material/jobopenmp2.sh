#!/bin/bash
#SBATCH --nodes=1
#SBATCH --time=10:00
#SBATCH --partition=cpa

OMP_NUM_THREADS=2 OMP_SCHEDULE=static,1 ./realign1 /scratch/cpa/large.ppm salida.ppm
OMP_NUM_THREADS=4 OMP_SCHEDULE=static,1 ./realign1 /scratch/cpa/large.ppm salida.ppm
OMP_NUM_THREADS=8 OMP_SCHEDULE=static,1 ./realign1 /scratch/cpa/large.ppm salida.ppm
OMP_NUM_THREADS=16 OMP_SCHEDULE=static,1 ./realign1 /scratch/cpa/large.ppm salida.ppm
OMP_NUM_THREADS=32 OMP_SCHEDULE=static,1 ./realign1 /scratch/cpa/large.ppm salida.ppm
OMP_NUM_THREADS=64 OMP_SCHEDULE=static,1 ./realign1 /scratch/cpa/large.ppm salida.ppm
OMP_NUM_THREADS=128 OMP_SCHEDULE=static,1 ./realign1 /scratch/cpa/large.ppm salida.ppm


OMP_NUM_THREADS=2 OMP_SCHEDULE=dynamic ./realign2 /scratch/cpa/large.ppm salida.ppm
OMP_NUM_THREADS=4 OMP_SCHEDULE=dynamic ./realign2 /scratch/cpa/large.ppm salida.ppm
OMP_NUM_THREADS=8 OMP_SCHEDULE=dynamic ./realign2 /scratch/cpa/large.ppm salida.ppm
OMP_NUM_THREADS=16 OMP_SCHEDULE=dynamic ./realign2 /scratch/cpa/large.ppm salida.ppm
OMP_NUM_THREADS=32 OMP_SCHEDULE=dynamic ./realign2 /scratch/cpa/large.ppm salida.ppm
OMP_NUM_THREADS=64 OMP_SCHEDULE=dynamic ./realign2 /scratch/cpa/large.ppm salida.ppm
OMP_NUM_THREADS=128 OMP_SCHEDULE=dynamic ./realign2 /scratch/cpa/large.ppm salida.ppm
