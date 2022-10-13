#!/bin/bash
#SBATCH --nodes=1 
#SBATCH --ntasks-per-node=47
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

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pprop_slurm GaP_HSE06_bands GaP_HSE06_optgeom &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm prop GaP_HSE06_bands &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pprop_slurm GaP_HSE06_doss GaP_HSE06_optgeom &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm prop GaP_HSE06_doss &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_PBE_optgeom &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_PBE_optgeom &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pprop_slurm GaP_PBE_bands GaP_PBE_optgeom &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm prop GaP_PBE_bands &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pprop_slurm GaP_PBE_doss GaP_PBE_optgeom &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm prop GaP_PBE_doss &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_PBE0_optgeom &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_PBE0_optgeom &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pprop_slurm GaP_PBE0_bands GaP_PBE0_optgeom &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm prop GaP_PBE0_bands &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pprop_slurm GaP_PBE0_doss GaP_PBE0_optgeom &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm prop GaP_PBE0_doss &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_PBESOL_optgeom &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_PBESOL_optgeom &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pprop_slurm GaP_PBESOL_bands GaP_PBESOL_optgeom &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm prop GaP_PBESOL_bands &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pprop_slurm GaP_PBESOL_doss GaP_PBESOL_optgeom &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm prop GaP_PBESOL_doss &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_PBESOL0_optgeom &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_PBESOL0_optgeom &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pprop_slurm GaP_PBESOL0_bands GaP_PBESOL0_optgeom &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm prop GaP_PBESOL0_bands &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pprop_slurm GaP_PBESOL0_doss GaP_PBESOL0_optgeom &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm prop GaP_PBESOL0_doss &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_LDA_optgeom &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_LDA_optgeom &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pprop_slurm GaP_LDA_bands GaP_LDA_optgeom &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm prop GaP_LDA_bands &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pprop_slurm GaP_LDA_doss GaP_LDA_optgeom &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm prop GaP_LDA_doss &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_M06_optgeom &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_M06_optgeom &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pprop_slurm GaP_M06_bands GaP_M06_optgeom &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm prop GaP_M06_bands &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pprop_slurm GaP_M06_doss GaP_M06_optgeom &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm prop GaP_M06_doss &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_BLYP_optgeom &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_BLYP_optgeom &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pprop_slurm GaP_BLYP_bands GaP_BLYP_optgeom &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm prop GaP_BLYP_bands &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pprop_slurm GaP_BLYP_doss GaP_BLYP_optgeom &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm prop GaP_BLYP_doss &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_B3LYP_optgeom &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_B3LYP_optgeom &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pprop_slurm GaP_B3LYP_bands GaP_B3LYP_optgeom &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm prop GaP_B3LYP_bands &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pprop_slurm GaP_B3LYP_doss GaP_B3LYP_optgeom &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm prop GaP_B3LYP_doss &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_B2GPPLYP_optgeom &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_B2GPPLYP_optgeom &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pprop_slurm GaP_B2GPPLYP_bands GaP_B2GPPLYP_optgeom &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm prop GaP_B2GPPLYP_bands &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pprop_slurm GaP_B2GPPLYP_doss GaP_B2GPPLYP_optgeom &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm prop GaP_B2GPPLYP_doss &
wait

