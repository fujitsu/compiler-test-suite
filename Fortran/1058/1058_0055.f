      program main
      real*8 ra, rb, rc, rd, re(50)
      integer*4 :: loop=50

      ra = -1.
      rb = 3.
      do i=1,loop
         re(i) = 1.9*i/1.1+i*(-1)**i
      end do

!$omp parallel private(i)
!$omp sections reduction(*:ra,rb)
      do i=1,loop
         ra = ra * (mod(i,5)+1)
         rb = rb * re(i)
      end do
!$omp section
      do i=1,loop
         ra = ra * (i+re(i))
      end do
!$omp section
      do i=1,loop
         rb = rb * (mod(i,7)+1)
      end do
!$omp end sections
!$omp end parallel

      rc = -1.
      rd = 3
      do i=1,loop
         rc = rc * (mod(i,5)+1)
         rd = rd * re(i)
      end do
      do i=1,loop
         rc = rc * (i+re(i))
         rd = rd * (mod(i,7)+1)
      end do

      write(*,*) "----- parallel sections  reduction(*:ra,rb) -----"
      if(abs(ra-rc).le.abs(rc)*1e-10 .and.
     +   abs(rb-rd).le.abs(rd)*1e-10) then
         write(*,*) "OK"
      else
         write(*,*) "NG   SECTIONS REDUCTION clause is incorrect"
         write(6,*) "     ra=", ra, "  It must be ",rc
         write(6,*) "     rb=", rb, "  It must be ",rd
      endif

      stop
      end

