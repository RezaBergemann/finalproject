#!/bin/bash
#SBATCH --job-name=filter_bermuda
#SBATCH --time=10:00:00
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=15
#SBATCH --mem-per-cpu=8G
#SBATCH --partition=general
#SBATCH --output=filter_bermuda_out.txt
#SBATCH --error=filter_bermuda_err.txt

module load miniconda
conda activate ipyrad
ipcluster start --n 15 --daemonize
sleep 60
ipyrad -p params-phys_bermuda.txt -s 2 -c 15 -f --ipcluster
