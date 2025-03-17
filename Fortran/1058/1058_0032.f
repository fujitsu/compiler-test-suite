      program main
      real*4 ra, rb(50)
      integer*4 ier
      integer*4 :: loop=50

      ra = 0
      rb = 0

!$omp parallel
!$omp do lastprivate(ra)
      do i=1,loop
          ra = i
          rb(i) = ra
      enddo
!$omp end do
!$omp end parallel

      ier = 0
      do i=1,loop
          if (rb(i).ne.i) ier=ier+1
      enddo
      write(*,*) "----- parallel"
      write(*,*) "      do lastprivate(ra) -----"
      if(ier.eq.0 .and. ra.eq.real(loop)) then
         write(*,*) "OK"
      else
         write(*,*) "NG   LASTPRIVATE clause is not active"
         write(*,*) "     ra=",ra,"  It must be ",loop
         write(*,*) "     ier=",ier
         write(*,*) "     rb=",rb
      end if

      stop
      end

