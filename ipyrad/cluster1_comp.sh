#!/bin/bash
#SBATCH --job-name=cluster1_comp
#SBATCH --time=7-
#SBATCH --ntasks=16
#SBATCH --mem-per-cpu=12G
#SBATCH --cpus-per-task=2
#SBATCH --output=cluster1_comp_out.txt
#SBATCH --error=cluster1_comp_err.txt

module load miniconda
conda activate ipyrad

ipcluster start --n $SLURM_NTASKS --daemonize

sleep 60

ipyrad -p params-phy1_comp.txt -s 3 -f --ipcluster -c $(($SLURM_NTASKS1))
