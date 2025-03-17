      program main
      real*4 ra, rb, rc, rd, re(50)
      integer*4 :: loop=50

      ra = -1.79
      rb = 3.47
      rc = -1.79
      rd = 3.47
      do i=1,loop
         re(i) = (mod(i,3)+1)*(-1)**i/2.9
      enddo

!$omp parallel reduction(*:ra,rb) private(i)
!$omp sections
      do i=1,loop
         ra = ra * (mod(i,3)/2.5+1.24)
         rb = rb * re(i)
      enddo
!$omp section
      do i=1,loop
         ra = ra * (mod(i,4)/4.2+re(i))
      enddo
!$omp section
      do i=1,loop
         rb = rb * (mod(i,7)/6.7+0.97)
      enddo
!$omp end sections
!$omp end parallel

      do i=1,loop
         rc = rc * (mod(i,3)/2.5+1.24)
         rd = rd * re(i)
      enddo
      do i=1,loop
         rc = rc * (mod(i,4)/4.2+re(i))
         rd = rd * (mod(i,7)/6.7+0.97)
      enddo

      write(*,*) "----- parallel sections  reduction(*:ra,rb) -----"
      if(abs(ra-rc).lt.abs(rc)*1e-4 .and.
     +   abs(rb-rd).lt.abs(rd)*1e-4) then
         write(*,*) "OK"
      else
         write(*,*) "NG   SECTIONS REDUCTION clause is incorrect"
         write(6,*) "     ra=", ra, "  It must be ",rc
         write(6,*) "     rb=", rb, "  It must be ",rd
      endif

      stop
      end

