all: omp-counter omp-tournament mpi-tournament mpi-dissemination mpi-built-in combined

omp-counter: counter-test.c
	gcc -o omp-counter counter-test.c -fopenmp
omp-tournament: tournament-test.c
	gcc -o omp-tournament tournament-test.c -lm -fopenmp
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
