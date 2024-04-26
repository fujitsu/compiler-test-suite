   integer :: v
   integer :: v1
   v = 15
   v1 = 15
   associate(u => v)
    if(u .ne. 15)print*,"101"
   !$omp parallel private(v1), firstprivate(v)
    v = -1
    if(u .ne. 15)print*,"102",u
   !$omp end parallel
   end associate
   print*,"pass"
   end


