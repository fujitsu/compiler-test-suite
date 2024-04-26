  integer :: v
  v = 15
  associate(u => v)  
  !$omp parallel 
  !$omp sections lastprivate(v)  
   v = -1
   if(u .ne. 15)print*,"101"
  !$omp end sections
  !$omp end parallel
  end associate
  print*,"pass"
  end

