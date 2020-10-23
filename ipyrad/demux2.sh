#!/bin/bash
#SBATCH --job-name=demux_phys_2
#SBATCH --time=10:00:00
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=20
#SBATCH --mem-per-cpu=8G
#SBATCH --partition=scavenge
#SBATCH --output=demux_phys_2_out.txt
#SBATCH --error=demux_phys_2_err.txt

module load miniconda
conda activate ipyrad
ipcluster start --n 20 --daemonize
sleep 60
ipyrad -p params-phys_index3.txt -s 1 -c 20 -f --ipcluster
