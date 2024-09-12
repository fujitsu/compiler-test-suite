    namelist /nam/i 
    i=1 
   write(1,nam )
   !$omp parallel default(private)
     i=2
   write(1,nam )
   !$omp endparallel 
   write(1,nam )
print *,'pass'
   end           
