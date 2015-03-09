gcc -o omp-counter OpenMP/counter.c -fopenmp
gcc -o omp-tournament OpenMP/tournament.c -lm -fopenmp
gcc -o omp-built-in OpenMP/built-in-barrier.c -fopenmp
mpicc -o mpi-tournament MPI/tournament-mpi.c -lm
mpicc -o mpi-dissemination MPI/dissemination-mpi.c -lm
mpicc -o mpi-built-in MPI/built-in-mpi.c
mpicc -o combined Combined/combined.c -lm -fopenmp
