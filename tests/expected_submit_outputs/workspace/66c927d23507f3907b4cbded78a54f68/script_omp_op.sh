#SBATCH --job-name="SubmissionTe/66c927d2/omp_op/0000
#SBATCH --partition=RM-Shared
#SBATCH -t 01:00:00
#SBATCH -N 1
#SBATCH --ntasks-per-node 2
export OMP_NUM_THREADS=2
