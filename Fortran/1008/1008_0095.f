c
c
c
      program main
      integer*8 i,ia
      real*4 :: ioff=30000.5
      real*4 :: loop=50.5
c
      ia = 0
c
!$omp parallel
!$omp do schedule(DYNAMIC,10)
      do i=2+ioff, loop+ioff
         if (i.eq.int(loop+ioff)) ia = i
      end do
!$omp end do
!$omp end parallel
c
      write(*,*) "----- TEST --"
      if (ia.eq.int(loop+ioff)) then
         write(6,*)'OK'
      else
         write(6,*)'NG'
      endif
      stop
      end
