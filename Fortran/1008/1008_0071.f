c
c
      program main
      integer*4 i,ia
      integer*4 :: ioff=200000000
      integer*4 :: loop=50
c
      ia = 0
c
!$omp parallel
!$omp do schedule(static)
      do i=1+ioff, loop+ioff
         if (i.eq.loop+ioff) ia = i
      end do
!$omp end do
!$omp end parallel
c
      write(*,*) "----- TEST --"
      if (ia.eq.loop+ioff) then
         write(6,*)'OK'
      else
         write(6,*)'NG'
      endif
      stop
      end
