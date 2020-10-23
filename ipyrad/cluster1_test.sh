#!/bin/bash
#SBATCH --job-name=cluster1_test
#SBATCH --time=1-
#SBATCH --ntasks=16
#SBATCH --mem-per-cpu=10G
#SBATCH --cpus-per-task=2
#SBATCH --output=cluster1_test_out.txt
#SBATCH --error=cluster1_test_err.txt

module load miniconda
conda activate ipyrad

ipcluster start --n $SLURM_NTASKS --daemonize

sleep 60

ipyrad -p params-phys_test.txt -s 3 -f --ipcluster -c $(($SLURM_NTASKS1))
