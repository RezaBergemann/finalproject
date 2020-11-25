#!/bin/bash
#SBATCH --job-name=cluster1_idx3
#SBATCH --time=3-
#SBATCH --partition=pi_dunn
#SBATCH --ntasks=16
#SBATCH --mem-per-cpu=5G
#SBATCH --cpus-per-task=2
#SBATCH --output=outfiles/cluster1_idx3_out.txt
#SBATCH --error=outfiles/cluster1_idx3_err.txt

module load miniconda
conda activate ipyrad09

ipcluster start --n $SLURM_NTASKS --daemonize

sleep 60
ipyrad -p params-phys_idx3.txt -d -s 3 -f --ipcluster -c $(($SLURM_NTASKS))
