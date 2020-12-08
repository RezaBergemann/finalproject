#!/bin/bash
#SBATCH --job-name=filter2_unmasked
#SBATCH --partition=scavenge
#SBATCH --time=1:00:00
#SBATCH --ntasks=18
#SBATCH --mem-per-cpu=16G
#SBATCH --cpus-per-task=2
#SBATCH --output=outfiles/filter2_unmasked_out.txt
#SBATCH --error=outfiles/filter2_unmasked_err.txt

module load miniconda
conda activate ipyrad09

ipcluster start --n $SLURM_NTASKS --daemonize

sleep 60
ipyrad -p params-phys_unmasked.txt -d -s 7 -f --ipcluster -c $(($SLURM_NTASKS))
