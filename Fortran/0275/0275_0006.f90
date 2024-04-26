     real :: act1(3)=5
     real :: act2=10
     call s(act1,act2)
     contains
     subroutine s(b,d)
     real :: b(3)
     real :: d
     associate(a => b(2:3), c => d)
     !$omp parallel 
     !$omp sections firstprivate(b,d)
      b=7
      d=8
     if(a(1) .ne. 5)print*,"101",a(1)
     if(a(2) .ne. 5)print*,"102",a(2)
     if(c .ne. 10)print*,"103",c
    !$omp end sections
    !$omp end parallel
     print*, "pass"
   end associate
   end subroutine
 end program


