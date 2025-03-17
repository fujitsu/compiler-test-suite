      program main
      integer*4 ia, ib
      integer*4 :: loop=10000
      ia = 0
!$omp parallel
!$omp do
      do i=1, loop
!$omp atomic
         ia = ia+i
      enddo
!$omp end do
!$omp end parallel
      ib = 0
      do i=1, loop
         ib = ib+i
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel do atomic -----"
      if(ia .eq. ib) then
          write(*,*) "OK"
      else
          write(*,*) "NG!  ATOMIC clause is not active"
          write(*,*) "     ia=", ia, "  It must be ", ib
      endif
      stop
      end
