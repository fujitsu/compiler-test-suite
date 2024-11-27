c
c
c
c
c
c
      program main
      integer*2 ia, ib
      integer*2 :: loop=30000
c
      ia = 0
c
!$omp parallel
!$omp do
      do i=1, loop
!$omp atomic
         ia = ia+1
      enddo
!$omp end do
!$omp end parallel
c
      ib = 0
      do i=1, loop
         ib = ib+1
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
