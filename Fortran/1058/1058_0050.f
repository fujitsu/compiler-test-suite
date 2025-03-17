      program main
      real*4 ra, rb, rc, rd, re(50)
      integer*4 :: loop=50

      ra = 0.9
      rb = -6.7
      rc = 0.9
      rd = -6.7
      do i=1, loop
         re(i) = 11.*i/3.+(-1)**i
      end do

!$omp parallel
!$omp do reduction(max:ra) reduction(min:rb)
      do i=1, loop
         ra = max(ra,re(i)-i*1.3)
         rb = min(rb,i*2.8-re(i))
      end do
!$omp end do
!$omp end parallel

      do i=1, loop
         rc = max(rc,re(i)-i*1.3)
         rd = min(rd,i*2.8-re(i))
      enddo

      write(*,*) "----- parallel"
      write(*,*) "      do reduction(max:ra) reduction(min:rb) -----"
      if(ra.eq.rc .and.  abs(rb-rd) < 0.00001) then
         write(*,*) "OK"
      else
         write(*,*) "NG   REDUCTION(MIN|MAX) clause is incorrect"
         write(*,*) "     MAX  ra=",ra,"  It must be ",rc
         write(*,*) "     MIN  rb=",rb,"  It must be ",rd
      endif

      stop
      end

