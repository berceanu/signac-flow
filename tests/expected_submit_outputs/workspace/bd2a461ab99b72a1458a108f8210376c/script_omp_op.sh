#SBATCH --job-name="SubmissionTe/bd2a461a/omp_op/0000
#SBATCH --partition=skx-normal
#SBATCH -t 01:00:00
#SBATCH --nodes=1
#SBATCH --ntasks=2
#SBATCH --partition=skx-normal
export OMP_NUM_THREADS=2
