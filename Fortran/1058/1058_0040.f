      program main
      real*4 ra, rb, rc, rd, re(50)
      integer*4 :: loop=50

      ra = 9.3
      rb = -7.5
      rc = 9.3
      rd = -7.5
      do i=1, loop
         re(i) = 11.*i/3.*(-1)**i
      enddo

!$omp parallel
!$omp do reduction(max:ra,rb)
      do i=1,loop
         ra = max(ra,re(i)*i*1.3)
         rb = max(rb,i*3.4*re(i))
      enddo
!$omp end do
!$omp end parallel

      do i=1,loop
         rc = max(rc,re(i)*i*1.3)
         rd = max(rd,i*3.4*re(i))
      enddo

      write(*,*) "----- parallel"
      write(*,*) "      do reduction(max:ra) -----"
      if(ra.eq.rc .and. rb.eq.rd) then
         write(*,*) "OK"
      else
         write(*,*) "NG   REDUCTION(MIN) clause is incorrect"
         write(*,*) "     ra=",ra,"  It must be ",rc
         write(*,*) "     rb=",rb,"  It must be ",rd
      endif

      stop
      end

