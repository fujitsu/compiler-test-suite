    namelist /nam/i
    i=1
   write(11,nam )
   !$omp parallel default(private)
     i=2
   write(11,nam )
   !$omp endparallel
   write(11,nam )
print *,'pass'
   end
