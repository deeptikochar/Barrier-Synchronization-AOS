#! /bin/bash
gcc -o omp-counter OpenMP/counter.c -fopenmp
gcc -o omp-tournament OpenMP/tournament.c -lm -fopenmp
gcc -o omp-built-in OpenMP/built-in-barrier.c -lm -fopenmp
/opt/openmpi-1.4.3-gcc44/bin/mpicc -o mpi-tournament MPI/tournament-mpi.c -lm
/opt/openmpi-1.4.3-gcc44/bin/mpicc -o mpi-dissemination MPI/dissemination-mpi.c -lm
/opt/openmpi-1.4.3-gcc44/bin/mpicc -o mpi-built-in MPI/built-in-mpi.c -lm
/opt/openmpi-1.4.3-gcc44/bin/mpicc -o combined Combined/combined.c -lm -fopenmp

