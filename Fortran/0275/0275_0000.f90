  integer :: v
  v = 15
  associate(u => v)  
  !$omp parallel 
   if(u .ne. 15)print*,"101"
  !$omp sections firstprivate(v)  
   v = -1
   if(u .ne. 15)print*,"102"
  !$omp end sections
  !$omp end parallel
  end associate
  print*,"pass"
  end

