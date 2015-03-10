OpenMPI installation instructions:  

sudo apt-get install libopenmpi-dev  
sudo apt-get install openmpi-bin  
export PATH="$PATH:/home/$USER/.openmpi/bin"
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/home/$USER/.openmpi/lib/"

Compilation:
In the top folder type:
make
To delete all the executable:
make clean

To compile on the jinx cluster, type:
./compile-jinx.sh

To run an OpenMPI program:  
mpirun -np <num_of_processes> <executable_name>
  
The test.py checks the values and the timestamps printed after each barrier. Look at the comments at the top of the file for printf format to use.  

To run test.py:  
python test.py output_file num_processes num_iterations_of_barrier



