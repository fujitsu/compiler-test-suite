      program main
      real*4 ra, rb, rc, rd, re(50)
      integer*4 :: loop=50

      ra = 0.
      rb = 0.
      do i=1, loop
         re(i) = 1.3*i/2.3+(-1)**i
      end do

!$omp parallel reduction(+:ra,rb)
!$omp sections
      do i=1, loop
         ra = ra-i*2
         rb = rb+i*3+re(i)
      end do
!$omp section
      do i=1, loop
         ra = ra+re(i)
      end do
!$omp section
      do i=1, loop
         rb = rb-i*re(i)
      end do
!$omp end sections
!$omp end parallel

      rc = 0.
      rd = 0.
      do i=1, loop
         rc = rc-i*2
         rd = rd+i*3+re(i)
      end do
      do i=1, loop
         rc = rc+re(i)
         rd = rd-i*re(i)
      end do
      write(*,*) "----- parallel reduction(+:ra,rb) -----"
      if(abs(ra-rc).lt.abs(rc)*1e-4 .and.
     +   abs(rb-rd).lt.abs(rd)*1e-4) then
         write(*,*) "OK"
      else
         write(*,*) "NG   REDUCTION(+) clause is incorrect"
         write(6,*) "     ra=", ra, "  It must be ",rc
         write(6,*) "     rb=", rb, "  It must be ",rd
      endif

      stop
      end

