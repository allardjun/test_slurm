#!/bin/bash

#SBATCH --job-name=test_slurm              ## job name 
#SBATCH --array=1-2                    ## number of array tasks
#SBATCH --ntasks=1                   ## (-n) number of tasks to launch (PER ARRAY JOB)
#SBATCH --ntasks-per-node=1          ## Number of tasks per node
#SBATCH --error=/home/ubuntu/test_slurm/slurm-%A_%a.err  ## error log file
#SBATCH --output=/home/ubuntu/test_slurm/slurm-%A_%a.out ## output log file
#SBATCH --time=0-07:00:00             ## time limit

date;
echo "Hello world from corduroy!" > /home/ubuntu/test_slurm/output_$SLURM_ARRAY_JOB_ID.$SLURM_ARRAY_TASK_ID.txt
date;
