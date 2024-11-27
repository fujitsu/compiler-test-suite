c
c
      program main
      integer*1 i,ia(50)
      integer*1 :: ioff=70
      integer*1 :: loop=50
      integer*4 ier
c
      ia = 0
      ier = 0
c
!$omp parallel
!$omp do schedule(static)
      do i=1+ioff, loop+ioff
         ia(i-ioff) = i
      end do
!$omp end do
!$omp end parallel
c
      write(*,*) "----- TEST --"
      do i=1+ioff, loop+ioff
         if(ia(i-ioff).ne.i) ier = 1
      end do
      if (ier.eq.0) then
         write(6,*)'OK!'
      else
         write(6,*)'NG!'
      endif
      stop
      end
