      program main
      integer*4 ia(50), ib, ic, it
      integer*4 ::  thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      ia = 0
      ib = 0
!$    thread = OMP_GET_MAX_THREADS()
!$omp parallel private(it)
!$    it = OMP_GET_THREAD_NUM() + 1
!$omp do schedule(static)
      do i=1,50 
         ia(i) = it
      end do
!$omp end do
!$omp end parallel
      ib = 0
      ic = 0
      do i=1,50 
         if (ia(i).ne.ic) then
             ib=ib+1
             ic=ia(i)
         endif
      end do
      write(*,*) "----- test --"
      write(*,*) "      parallel private(it)"
      write(*,*) "      do schedule(static) -----"
      if(ib.eq.thread) then
         write(*,*) "OK"
      else
         write(*,*) "NG  SCHEDULE clause is not active"
         write(*,*) "     ib=",ib," It must be ",thread
         write(*,*) "     ia=",ia
      end if
      stop
      end

