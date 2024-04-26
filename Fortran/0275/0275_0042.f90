     integer :: b(3)=5
     integer :: d=10
     real :: f=15
     associate( c => d, a=>b(2:3))
     !$omp parallel private(b,d,f)
     associate(e=>f)
     !$omp parallel private(f)
      b=7
      d=8
      f=9
     if(e .ne. 15)print*,"104",e
    !$omp end parallel
     end associate
     if(a(1) .ne. 5)print*,"101"
     if(a(2) .ne. 5)print*,"102"
     if(c .ne. 10)print*,"103",c
    !$omp end parallel
     print*, "pass"
   end associate
 end program


