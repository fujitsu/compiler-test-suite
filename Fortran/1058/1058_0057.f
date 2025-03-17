      program main
      real*4 ra, rb, rc, rd, ie(50)
      integer*4 :: loop=50

      ra = 9.
      rb = -7.
      do i=1, loop
         ie(i) = 9.4*i/3.7+(-1)**i
      end do

!$omp parallel private(i)
!$omp sections reduction(min:ra,rb)
      do i=1, loop
         ra = min(ie(i)-i*5, ra)
         rb = min(i*3+ie(i), rb)
      end do
!$omp section
      do i=1, loop
         ra = min(i*7+ie(i), ra)
      end do
!$omp section
      do i=1, loop
         rb = min(ie(i)-i*9, rb)
      end do
!$omp end sections
!$omp end parallel

      rc = 9.
      rd = -7.
      do i=1, loop
         rc = min(ie(i)-i*5, rc)
         rd = min(i*3+ie(i), rd)
      end do
      do i=1, loop
         rc = min(i*7+ie(i), rc)
         rd = min(ie(i)-i*9, rd)
      end do
      write(*,*) "----- parallel sections reduction(min:ra,rb) -----"
      if(ra.eq.rc .and. rb.eq.rd) then
         write(*,*) "OK"
      else
         write(*,*) "NG   SECTIONS REDUCTION(MIN) clause is incorrect"
         write(*,*) "     ra=",ra,"  It must be ",rc
         write(*,*) "     rb=",rb,"  It must be ",rd
      endif

      stop
      end

