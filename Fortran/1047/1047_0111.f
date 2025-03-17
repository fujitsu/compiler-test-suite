      program main
      integer*4 ia(150), ic1, ic2
      integer*4 :: loop=150
      ic1=0
      do i=1, loop
         ia(i)=13*i/7+(17*i/9)*(-1)**mod(i,2)
      end do
!$omp parallel
!$omp do firstprivate(ia) reduction(+:ic1)
      do i=1, loop
         ic1 = ic1 + ia(i)
      end do
!$omp end do
!$omp end parallel
      ic2=0
      do i=1, loop
         ic2 = ic2 + ia(i)
      end do
      write(*,*) "----- test --"
      write(*,*) "      parallel"
      write(*,*) "      do firstprivate(ia) reduction(+:ic1) -----"
      if(ic1.eq.ic2) then
         write(*,*) "OK"
      else
         write(*,*) "NG  FIRSTPRIVATE + REDUCTION is incorrect"
         write(*,*) "       ic1=", ic1, " ic2=", ic2
      end if
      stop
      end
