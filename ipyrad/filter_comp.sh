#!/bin/bash
#SBATCH --job-name=filter_comp
#SBATCH --time=10:00:00
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=20
#SBATCH --mem-per-cpu=8G
#SBATCH --partition=scavenge
#SBATCH --output=filter_comp_out.txt
#SBATCH --error=filter_comp_err.txt

module load miniconda
conda activate ipyrad
ipcluster start --n 20 --daemonize
sleep 60
ipyrad -p params-phy1_comp.txt -s 2 -c 20 -f --ipcluster
