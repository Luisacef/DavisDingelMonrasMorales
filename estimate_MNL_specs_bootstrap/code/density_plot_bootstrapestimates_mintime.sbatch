#!/bin/sh

#SBATCH --job-name=density_plot_mintime
#SBATCH --output=slurmlogs/density_plot_mintime_job.out
#SBATCH --error=slurmlogs/density_plot_mintime_job.err
#SBATCH --time=00:10:00
#SBATCH --partition=broadwl
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --mem-per-cpu=8000
#SBATCH --mail-type=END,FAIL

module load R
Rscript density_plot_bootstrapestimates_mintime.R