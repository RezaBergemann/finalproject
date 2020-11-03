#!/bin/bash
#SBATCH --job-name=cluster1_bermuda
#SBATCH --time=7-
#SBATCH --ntasks=16
#SBATCH --mem-per-cpu=12G
#SBATCH --cpus-per-task=2
#SBATCH --output=cluster1_bermuda_out.txt
#SBATCH --error=cluster1_bermuda_err.txt

module load miniconda
conda activate ipyrad

ipcluster start --n $SLURM_NTASKS --daemonize

sleep 60
ipyrad -p params-phys_bermuda.txt -s 3 -f --ipcluster -c $(($SLURM_NTASKS1))
