#!/bin/bash
#SBATCH -p short
#SBATCH --job-name=sra
#SBATCH --mail-type=ALL
#SBATCH --mail-user=giulia.corbet@colorado.edu
#SBATCH --nodes=1
#SBATCH --ntasks=64
#SBATCH --mem=20gb
#SBATCH --time=10:00:00

### load your module(s)

module load sra/2.9.2

fastq-dump --split-files SRX2825943
fastq-dump --split-files SRX2825942
fastq-dump --split-files SRX2825941
fastq-dump --split-files SRX2825945
fastq-dump --split-files SRX2825944
fastq-dump --split-files SRX2825949
