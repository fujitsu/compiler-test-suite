c
c
      program main
      integer*1 i,ia
      integer*1 :: ioff=70
      integer*1 :: loop=50
c
      ia = 0
c
!$omp parallel
!$omp do schedule(static,1)
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
