  integer :: v
  v = 15
  associate(u => v)  
   if(u .ne. 15)print*,"101"
  !$omp parallel private(v)   
   v = -1
   if(u .ne. 15)print*,"102"
  !$omp end parallel
  end associate
  print*,"pass"
  end

