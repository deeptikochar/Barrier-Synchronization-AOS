OpenMPI installation instructions:  

sudo apt-get install libopenmpi-dev  
sudo apt-get install openmpi-bin  
export PATH="$PATH:/home/$USER/.openmpi/bin"
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/home/$USER/.openmpi/lib/"


Compilation:
In the top folder type:
make
To delete all the executables:
make clean

To compile on the jinx cluster, type:
./compile-jinx.sh


To run on the jinx cluster:
qsub runner-omp.sh
qsub runner-mpi.sh

Note:
The omp and combined executables take 2 arguments:
./<executeable_name> <num thread> <Num_loops> > <output_file>
mpirun -np <num_of_processes> <executable_name> <num thread> <Num_loops> > <output_file>
The MPI executables take 1 argument: 
mpirun -np <num_of_processes> <executable_name> > <output_file>


To run a test program:  
cd Test
make
./<executeable_name> <num thread> <Num_loops> > <output_file>  	 // For omp tests
mpirun -np <num_of_processes> <executable_name> > <output_file>  // FOr MPI tests
mpirun -np <num_of_processes> <executable_name> <num thread> <Num_loops> > <output_file>  // For combined test
  
The test.py checks the values and the timestamps printed after each barrier. Look at the comments at the top of the file for printf format to use.  

To run test.py:  
python test.py <output_file> <num_processes> <num_iterations_of_barrier>



