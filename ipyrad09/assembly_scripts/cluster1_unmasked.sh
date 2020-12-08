#!/bin/bash
#SBATCH --job-name=cluster1_unmasked
#SBATCH --time=7-
#SBATCH --ntasks=16
#SBATCH --mem-per-cpu=20G
#SBATCH --cpus-per-task=2
#SBATCH --output=outfiles/cluster1_unmasked_out.txt
#SBATCH --error=outfiles/cluster1_unmasked_err.txt

module load miniconda
conda activate ipyrad09

ipcluster start --n $SLURM_NTASKS --daemonize

sleep 60
ipyrad -p params-phys_unmasked.txt -d -s 3 -f --ipcluster -c $(($SLURM_NTASKS-1))
