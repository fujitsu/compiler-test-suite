      program main
      integer*8 i,ia(50)
      integer*8 :: ioff=3000000000
      integer*4 :: loop=50
      integer*4 ier
      ia = 0
      ier = 0
!$omp parallel
!$omp do schedule(static)
      do i=1+ioff, loop+ioff
         ia(i-ioff) = i
      end do
!$omp end do
!$omp end parallel
      write(*,*) "----- test --"
      do i=1+ioff, loop+ioff
         if(ia(i-ioff).ne.i) ier = 1
      end do
      if (ier.eq.0) then
         write(6,*)'OK!'
      else
         write(6,*)'NG'
      endif
      stop
      end
