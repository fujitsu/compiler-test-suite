      program main
      integer*8 i,ia
      integer*8 :: ioff=3000000000
      integer*4 :: loop=50
      ia = 0
!$omp parallel
!$omp do schedule(RUNTIME)
      do i=1+ioff, loop+ioff
         if (i.eq.loop+ioff) ia = i
      end do
!$omp end do
!$omp end parallel
      write(*,*) "----- test --"
      if (ia.eq.loop+ioff) then
         write(6,*)'OK'
      else
         write(6,*)'NG'
      endif
      stop
      end
