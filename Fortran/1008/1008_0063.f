c
c
      program main
      integer*2 i,ia
      integer*2 :: ioff=30000
      integer*2 :: loop=50
c
      ia = 0
c
!$omp parallel
!$omp do schedule(GUIDED,10)
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
