#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=128
#SBATCH --cpus-per-task=1
#SBATCH --time=00:20:00

# Replace [budget code] below with your full project code
#SBATCH --account=e05-power-smw
#SBATCH --partition=standard
#SBATCH --qos=short   
#SBATCH --export=none

module load epcc-job-env
module load other-software
module load crystal

# Address the memory leak
export FI_MR_CACHE_MAX_COUNT=0 

# Run calculations
timeout 17m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_HSE06_elapiezo 
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_HSE06_elapiezo
