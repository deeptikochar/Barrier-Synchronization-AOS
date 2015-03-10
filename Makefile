all: omp-counter omp-tournament omp-built-in mpi-tournament mpi-dissemination mpi-built-in combined

omp-counter: OpenMP/counter.c
	gcc -o omp-counter OpenMP/counter.c -fopenmp
omp-tournament: OpenMP/tournament.c
	gcc -o omp-tournament OpenMP/tournament.c -lm -fopenmp
omp-built-in: OpenMP/built-in-barrier.c
	gcc -o omp-built-in OpenMP/built-in-barrier.c -fopenmp
mpi-tournament: MPI/tournament-mpi.c
	mpicc -o mpi-tournament MPI/tournament-mpi.c -lm
mpi-dissemination: MPI/dissemination-mpi.c
	mpicc -o mpi-dissemination MPI/dissemination-mpi.c -lm
mpi-built-in: MPI/built-in-mpi.c
	mpicc -o mpi-built-in MPI/built-in-mpi.c
combined: Combined/combined.c
	mpicc -o combined Combined/combined.c -lm -fopenmp
clean:
	rm omp-counter omp-tournament omp-built-in mpi-tournament mpi-dissemination mpi-built-in combined
