#!/bin/bash
#SBATCH --job-name=demux_idx3
#SBATCH --time=10:00:00
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=15
#SBATCH --mem-per-cpu=8G
#SBATCH --partition=scavenge
#SBATCH --output=demux_idx3_out.txt
#SBATCH --error=demux_idx3_err.txt

module load miniconda
conda activate ipyrad09
ipcluster start --n 15 --daemonize
sleep 60
ipyrad -p params-phys_idx3.txt -s 1 -c 15 -f --ipcluster
