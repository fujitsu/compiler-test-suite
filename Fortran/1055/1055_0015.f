      program main
      integer*4 ia(50), ib, ic
      integer*4 :: loop=50
!$    integer*4 OMP_GET_THREAD_NUM
      ia = 0
      ib = 0
!$omp parallel do schedule(dynamic,loop)
      do i=1, loop
!$       ia(i) = OMP_GET_THREAD_NUM() + 1
      end do
!$omp end parallel do
      ib = 0
      ic = 0
      do i=1, loop
         if (ia(i).ne.ic) then
            ib=ib+1
            ic=ia(i)
         endif
      end do
      write(*,*) "----- test --"
      write(*,*) "      parallel do schedule(dynamic,loop) -----"
      if(ib.eq.1) then
         write(*,*) "OK"
      else
         write(*,*) "NG!  SCHEDULE clause is not active!"
         write(*,*) "     ib=",ib," It must be 1"
         write(*,*) "     ia=",ia
      endif
      stop
      end

