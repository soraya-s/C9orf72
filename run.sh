#!/bin/bash
#SBATCH -p long
#SBATCH --job-name=nextflowtest
#SBATCH --mail-type=ALL
#SBATCH --mail-user=soraya.shehata@colorado.edu
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --mem=6gb
#SBATCH --time=100:00:00
#SBATCH --output=nextflow%j.out
#SBATCH --error=nextflow%j.err
pwd; hostname; date
echo "You've requested $SLURM_CPUS_ON_NODE core."
module load singularity/3.1.1
nextflow run nf-core/rnaseq -r 1.4.1 \
-resume \
-profile singularity \
--reads './data/prudencio_fcx/*_{1,2}.fastq' \
--fasta './GENOMES/sequence/GRCh38.p13.genome.fa' \
--gtf './GENOMES/annotation/gencode.v32.annotation.gtf' \
--pseudo_aligner salmon \
--gencode \
--email soraya.shehata@colorado.edu \
-c nextflow.config
date
