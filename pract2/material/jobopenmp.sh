#!/bin/bash
#SBATCH --nodes=1
#SBATCH --time=5:00
#SBATCH --partition=cpa
OMP_NUM_THREADS=0 OMP_SCHEDULE=static ./realign0 /scratch/cpa/large.ppm salida.ppm

