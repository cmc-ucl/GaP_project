#!/bin/bash
#SBATCH --nodes=1 
#SBATCH --ntasks-per-node=2 
#SBATCH --cpus-per-task=1
#SBATCH --time=12:00:00

# Replace [budget code] below with your full project code
#SBATCH --account=e05-power-smw
#SBATCH --partition=standard
#SBATCH --qos=standard
#SBATCH --export=none

module load epcc-job-env
module load other-software
module load crystal

# Address the memory leak
export FI_MR_CACHE_MAX_COUNT=0

# Run calculations
timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_HSE06_freq &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_HSE06_freq &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_HSE06_cpks &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_HSE06_cpks &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_HSE06_elapiezo &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_HSE06_elapiezo &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pprop_slurm GaP_HSE06_bands GaP_HSE06_optgeom &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm prop GaP_HSE06_bands &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pprop_slurm GaP_HSE06_doss GaP_HSE06_optgeom &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm prop GaP_HSE06_doss &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_PBE_freq &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_PBE_freq &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_PBE_cpks &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_PBE_cpks &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_PBE_elapiezo &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_PBE_elapiezo &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pprop_slurm GaP_PBE_bands GaP_PBE_optgeom &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm prop GaP_PBE_bands &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pprop_slurm GaP_PBE_doss GaP_PBE_optgeom &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm prop GaP_PBE_doss &
wait

