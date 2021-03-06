#!/bin/bash
#SBATCH --job-name=cluster2_unmasked
#SBATCH --partition=scavenge
#SBATCH --time=4:00:00
#SBATCH --ntasks=18
#SBATCH --mem-per-cpu=16G
#SBATCH --cpus-per-task=2
#SBATCH --output=outfiles/cluster2_unmasked_out.txt
#SBATCH --error=outfiles/cluster2_unmasked_err.txt

module load miniconda
conda activate ipyrad09

ipcluster start --n $SLURM_NTASKS --daemonize

sleep 60
ipyrad -p params-phys_unmasked.txt -d -s 6 -f --ipcluster -c $(($SLURM_NTASKS))
