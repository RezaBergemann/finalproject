#!/bin/bash
#SBATCH --job-name=filter_both
#SBATCH --time=1-
#SBATCH --ntasks=16
#SBATCH --mem-per-cpu=12G
#SBATCH --cpus-per-task=2
#SBATCH --output=filter_both_out.txt
#SBATCH --error=filter_both_err.txt

module load miniconda
conda activate ipyrad09

ipcluster start --n $SLURM_NTASKS --daemonize

sleep 60
ipyrad -p params-phys_both.txt -d -s 7 -f --ipcluster -c $(($SLURM_NTASKS))
