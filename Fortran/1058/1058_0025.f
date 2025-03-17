      program main
      real*16 ra, rb(50)
      integer*4 ier
      integer*4 :: loop=50

      ra = 99.0
      rb = 0.0
      ier = 0

!$omp parallel
!$omp do private(ra)
      do j=1, loop
          ra = j
          rb(j) = ra
      end do
!$omp end do
      if(ra.ne.99.0)then
!$omp atomic
          ier=ier+1
      endif
!$omp end parallel

      do j=1, loop
          if (rb(j).ne.j) ier=ier+1
      enddo
      write(*,*) "----- parallel"
      write(*,*) "      do private(ra) ------"
      if(ra.eq.99.0 .and. ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG   PRIVATE clause is not active"
         write(*,*) "     ra=",ra, "  It must be 99.0"
         write(*,*) "     rb=",rb
      endif

      stop
      end
