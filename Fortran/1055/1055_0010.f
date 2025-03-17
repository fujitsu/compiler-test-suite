      program main
      integer*4 ia(50), ib, ic
      integer*4 :: loop=50, thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      ia = 0
      ib = 0
!$    thread = OMP_GET_MAX_THREADS()
!$omp paralleldo schedule(static)
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
      write(*,*) "      parallel do schedule(static) -----"
      if(ib.eq.thread) then
         write(*,*) "OK"
      else
         write(*,*) "NG!  SCHEDULE clause is not active!"
         write(*,*) "     ib=",ib," It must be ",thread
         write(*,*) "     ia=",ia
      endif
      stop
      end

