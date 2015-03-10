#PBS -q cs6210
#PBS -l nodes=1:fourcore
#PBS -l walltime=00:05:00
#PBS -N AD-omp
./omp-tournament 4 100000 > ./op
./omp-counter 4 100000 >> ./op
./omp-built-in 4 100000 >> ./op