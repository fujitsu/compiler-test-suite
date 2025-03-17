      program main
      real*8 ia(150), ic1, ic2
      integer*4 :: loop=150

      ic1=0.3
      do i=1, loop
         ia(i)=17.3*i/9.1*(-1)**i
      end do
!$omp parallel
!$omp do firstprivate(ia) reduction(+:ic1)
      do i=1, loop
         ic1 = ic1 + ia(i)*i/11
      end do
!$omp end do
!$omp end parallel

      ic2=0.3
      do i=1, loop
         ic2 = ic2 + ia(i)*i/11
      end do
      write(*,*) "----- parallel"
      write(*,*) "      do firstprivate(ia) reduction(+:ic1) -----"
      if(abs(ic1-ic2).le.abs(ic2)*1e-10) then
         write(*,*) "OK"
      else
         write(*,*) "NG   FIRSTPRIVATE + REDUCTION is incorrect"
         write(*,*) "       ic1=", ic1, " ic2=", ic2
      endif

      stop
      end
