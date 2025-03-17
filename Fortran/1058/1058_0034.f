      program main
      real*4 ra, rb(50), rc(50)
      integer*4 ier
      integer*4 :: loop=50

      ra = 5
      do i=1,loop
          rb(i) = i*(i/1.03)*(-1)**i
      enddo

!$omp parallel
!$omp do firstprivate(rb) lastprivate(ra)
      do i=1,loop
          ra = i
          rc(i) = rb(i) + ra
      enddo
!$omp end do
!$omp end parallel

      ier = 0
      do i=1,loop
          if (rc(i).ne.rb(i)+i) ier=ier+1
      enddo
      write(*,*) "----- parallel"
      write(*,*) "      do lastprivate(ra) -----"
      if(ier.eq.0 .and. ra.eq.real(loop)) then
         write(*,*) "OK"
      else
         write(*,*) "NG   LASTPRIVATE clause is not active"
         write(*,*) "     ra=",ra,"  It must be ",loop
         write(*,*) "     ier=",ier
         write(*,*) "     rc=",rc
      end if

      stop
      end

