     integer :: v(2)
call omp_set_num_threads(1)
     v(1) = 15
     v(2) = 16
     associate(u => v(2))
     !$omp parallel private(v)   
      v = -1
      u=u+10
      if( u .gt. 36)print*,"101",u
    !$omp end parallel
     print*,"pass"
   end associate
 end program


