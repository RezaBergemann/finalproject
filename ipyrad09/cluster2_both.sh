#!/bin/bash
#SBATCH --job-name=cluster2_both
#SBATCH --time=1-
#SBATCH --ntasks=18
#SBATCH --mem-per-cpu=16G
#SBATCH --cpus-per-task=2
#SBATCH --output=cluster2_both_out.txt
#SBATCH --error=cluster2_both_err.txt

module load miniconda
conda activate ipyrad09

ipcluster start --n $SLURM_NTASKS --daemonize

sleep 60
ipyrad -p params-phys_both.txt -d -s 6 -f --ipcluster -c $(($SLURM_NTASKS))
