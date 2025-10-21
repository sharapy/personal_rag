#!/bin/bash
#SBATCH --job-name=gpu_test
#SBATCH --output=logs/gpu_test_%j.out
#SBATCH --error=logs/gpu_test_%j.err
#SBATCH --partition=gpu               # or 'gpu-short', depending on your cluster
#SBATCH --gres=gpu:1                  # request 1 GPU
#SBATCH --cpus-per-task=4             # optional: 4 CPU cores
#SBATCH --mem=16G                     # optional: 16 GB memory
#SBATCH --time=00:10:00               # 10 minutes max runtime

# Load environment modules (depends on cluster)
module load python/3.13
module load cuda/12.1

# Activate your virtual environment
source ~/envs/mlenv/bin/activate

# Run your script
python train.py

$ sbatch run_gpu_job.slurm

