all: omp-counter omp-tournament mpi-tournament mpi-dissemination combined

omp-counter: counter-test.c
	gcc -o omp-counter counter-test.c -fopenmp
omp-tournament: tournament-test.c
	gcc -o omp-tournament tournament-test.c -lm -fopenmp
mpi-tournament: tournament-mpi-test.c
	mpicc -o mpi-tournament tournament-mpi-test.c -lm
mpi-dissemination: dissemination-mpi-test.c
	mpicc -o mpi-dissemination dissemination-mpi-test.c -lm
combined: combined-test.c
	mpicc -o combined combined-test.c -lm -fopenmp
clean:
	rm omp-counter omp-tournament mpi-tournament mpi-dissemination combined
