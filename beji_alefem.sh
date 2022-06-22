#!/bin/bash
#SBATCH -N 1
#SBATCH -n 8
#SBATCH -c 1 # specify 6 threads per process
#SBATCH -t 24:00:00
#SBATCH -p workq
#SBATCH -A loni_loniccr24
#SBATCH -o o.out # optional, name of the stdout, using the job number (%j) and the first node (%N)
#SBATCH -e e.err # optional, name of the stderr, using job and first node values

date

module purge
module load python/3.7.6
#which python
#unset PYTHONPATH
#which python
#export PROTEUS_ARCH=linux
#export PYTHONPATH=/project/cekees/cekees/proteus/1.7.5/lib/python3.7/site-packages:$PYTHONPATH
#export PATH=${PROJECT}/bin:${PROJECT}/proteus/1.7.5/bin:${PATH}
#export LD_LIBRARY_PATH=${PROJECT}/proteus/1.7.5/lib:${PROJECT}/proteus/1.7.5/lib64:${LD_LIBRARY_PATH}

#. ~/.bashrc
mkdir -p $WORK/beji_alefem.$SLURM_JOBID
cd $WORK/beji_alefem.$SLURM_JOBID 
cp $SLURM_SUBMIT_DIR/*.py .
cp $SLURM_SUBMIT_DIR/*.sh .

#conda activate proteus-dev
#unset PYTHONPATH
#srun parun beji_battjes_so.py -F -l 5 -C "he=0.002 T=300. wave_period=2.01975" -O petsc.options.asm

python beji_alefem.py

exit 0

