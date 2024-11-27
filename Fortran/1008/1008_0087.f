c
c
c
      program main
      integer*8 i,ia
      real*16 :: ioff=30000.5
      real*16 :: loop=50.3
c
      ia = 0
c
!$omp parallel
!$omp do schedule(DYNAMIC,1)
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
