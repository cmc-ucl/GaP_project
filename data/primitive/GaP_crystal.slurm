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
timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_HSE06_optgeom &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_HSE06_optgeom &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_PBE_optgeom &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_PBE_optgeom &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_PBE0_optgeom &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_PBE0_optgeom &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_PBESOL_optgeom &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_PBESOL_optgeom &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_PBESOL0_optgeom &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_PBESOL0_optgeom &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_LDA_optgeom &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_LDA_optgeom &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_M06_optgeom &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_M06_optgeom &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_BLYP_optgeom &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_BLYP_optgeom &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_B3LYP_optgeom &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_B3LYP_optgeom &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_B2GPPLYP_optgeom &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_B2GPPLYP_optgeom &
wait

