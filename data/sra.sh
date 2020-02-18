#!/bin/bash
#SBATCH -p short
#SBATCH --job-name=sra
#SBATCH --mail-type=ALL
#SBATCH --mail-user=soraya.shehata@colorado.edu
#SBATCH --nodes=1
#SBATCH --ntasks=64
#SBATCH --mem=20gb
#SBATCH --time=10:00:00

### load your module(s)

module load sra/2.9.2

fastq-dump --split-files SRX375136
fastq-dump --split-files SRX375135
fastq-dump --split-files SRX375134
fastq-dump --split-files SRX375133
fastq-dump --split-files SRX375132
fastq-dump --split-files SRX375131
fastq-dump --split-files SRX375130
fastq-dump --split-files SRX375129
