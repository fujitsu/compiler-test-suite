     integer :: v(2)
call omp_set_num_threads(1)
     v(1) = 15
     v(2) = 16
     associate(u => v(2))
    !$omp parallel reduction(+:v)
      v = -1
     if( u .ne. 16)print*,"101",u
    !$omp end parallel
     print*,"pass"
   end associate
 end program


