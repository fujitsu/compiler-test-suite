      program main
      real*4 ra, rb, rc, rd, re(50)
      integer*4 :: loop=50

      ra = 9.
      rb = -7.
      do i=1, loop
         re(i) = 11.5*i/3.7+(-1)**i
      end do

!$omp parallel private(i)
!$omp sections reduction(max:ra,rb)
      do i=1, loop
         ra = max(re(i)-i*13, ra)
         rb = max(i*3+re(i), rb)
      end do
!$omp section
      do i=1, loop
         ra = max(i*17+re(i), ra)
      end do
!$omp section
      do i=1, loop
         rb = max(re(i)-i*11, rb)
      end do
!$omp end sections
!$omp end parallel

      rc = 9.
      rd = -7.
      do i=1, loop
         rc = max(re(i)-i*13, rc)
         rd = max(i*3+re(i), rd)
      end do
      do i=1, loop
         rc = max(i*17+re(i), rc)
         rd = max(re(i)-i*11, rd)
      end do
      write(*,*) "----- parallel sections riduction(max:ra,rb) -----"
      if(ra.eq.rc .and. rb.eq.rd) then
         write(*,*) "OK"
      else
         write(*,*) "NG   SECTIONS REDUCTION clause is incorrect"
         write(*,*) "     ra=",ra,"  It must be ",rc
         write(*,*) "     rb=",rb,"  It must be ",rd
      endif

      stop
      end

