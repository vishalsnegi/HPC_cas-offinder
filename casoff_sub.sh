#!/bin/bash
#SBATCH --partition=batch
#SBATCH --job-name=casoffinder
#SBATCH --ntasks=1
#SBATCH --time=4:00:00
#SBATCH --mem=10G

ml Miniconda3/4.7.10
source activate casoffinder

mkdir casoffinder_OUT_hpc

cas-offinder in_PNA.txt C casoffinder_OUT_hpc/out_PNA.txt
cas-offinder in_P_stewartii.txt C casoffinder_OUT_hpc/out_P_stewartii.txt
cas-offinder in_P_ananatis.txt C casoffinder_OUT_hpc/out_P_ananatis.txt
cas-offinder in_P_agglomerans.txt C casoffinder_OUT_hpc/out_P_agglomerans.txt 

echo 'job done'
