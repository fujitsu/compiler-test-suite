c
c
c
c
c
      program main
      integer*8 ia, ib
      integer*4 :: loop=10000
c
      ia = 0
c
!$omp parallel
!$omp do
      do i=1, loop
!$omp atomic
         ia = ia+i
      enddo
!$omp end do
!$omp end parallel
c
      ib = 0
      do i=1, loop
         ib = ib+i
      enddo
      write(*,*) "----- TEST --"
      write(*,*) "      parallel do atomic -----"
      if(ia .eq. ib) then
          write(*,*) "OK"
      else
          write(*,*) "NG!  ATOMIC clause is not active"
          write(*,*) "     ia=", ia, "  It must be ", ib
      endif
      stop
      end
