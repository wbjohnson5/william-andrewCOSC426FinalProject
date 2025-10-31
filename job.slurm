#!/bin/bash
#
#
# -------------------- SLURM directives --------------------
#SBATCH --job-name=Model_Training         	# job name (no spaces)
#SBATCH --partition=gpu 	               	# queue/partition
#SBATCH --nodes=1                         	# number of nodes
#SBATCH --ntasks-per-node=4               	# processors per node (equivalent to ppn)
#SBATCH --time=24:00:00                   	# max wall‑clock time (hh:mm:ss)
#SBATCH --mem=4G                          	# memory per node
#SBATCH --output=/home/ahatfield/finalproject/output.log   # stdout file
#SBATCH --error=/home/ahatfield/finalproject/error.log     # stderr file
#SBATCH --mail-type=BEGIN,END,FAIL        	# send mail at start, end, and on error
#SBATCH --mail-user=ahatfield@colgate.edu 	# email address for notifications
#SBATCH --export=ALL                      	# export all current environment variables
# ---------------------------------------------------------

# Change to the directory where the job was submitted
cd /ahatfield/home/finalproject

# Activate the Python environment (adjust paths if needed)
source /home/ahatfield/.conda/bin/activate && sleep 1 && conda activate nlp && sleep 1

# Run the Python script – this will be executed on each allocated CPU core
python3.11 /home/ahatfield/finalproject/script.py