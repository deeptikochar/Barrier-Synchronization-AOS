#PBS -q cs6210
#PBS -l nodes=4:sixcore
#PBS -l walltime=00:05:00
#PBS -N AD-mpi
OMPI_MCA_mpi_yield_when_idle=0
/opt/openmpi-1.4.3-gcc44/bin/mpirun --hostfile $PBS_NODEFILE -np 4 ./combined 4 1000000 > ./op
/opt/openmpi-1.4.3-gcc44/bin/mpirun --hostfile $PBS_NODEFILE -np 4 ./mpi-tournament 1000000 >> ./op
/opt/openmpi-1.4.3-gcc44/bin/mpirun --hostfile $PBS_NODEFILE -np 4 ./mpi-dissemination 1000000 >> ./op
/opt/openmpi-1.4.3-gcc44/bin/mpirun --hostfile $PBS_NODEFILE -np 4 ./mpi-built-in 1000000 >> ./op