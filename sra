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

fastq-dump --split-files SRR1927020
fastq-dump --split-files SRR1927022
fastq-dump --split-files SRR1927028
fastq-dump --split-files SRR1927034
fastq-dump --split-files SRR1927036
fastq-dump --split-files SRR1927038
fastq-dump --split-files SRR1927040
fastq-dump --split-files SRR1927042
fastq-dump --split-files SRR1927056
fastq-dump --split-files SRR1927024
fastq-dump --split-files SRR1927026
fastq-dump --split-files SRR1927030
fastq-dump --split-files SRR1927032
fastq-dump --split-files SRR1927044
fastq-dump --split-files SRR1927046
fastq-dump --split-files SRR1927048
fastq-dump --split-files SRR1927050
fastq-dump --split-files SRR1927058
fastq-dump --split-files SRR1927060
fastq-dump --split-files SRR1927062
fastq-dump --split-files SRR1927064
fastq-dump --split-files SRR1927066
fastq-dump --split-files SRR1927068
fastq-dump --split-files SRR1927070
