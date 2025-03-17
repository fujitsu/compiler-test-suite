      program main
      integer*4 ia(50), ib, ic, it
!$    integer*4 OMP_GET_THREAD_NUM, OMP_GET_NUM_THREADS
      ia = 0
      ib = 0
!$omp parallel private(it)
!$    it = OMP_GET_THREAD_NUM() + 1
!$omp do schedule(static,1)
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
      write(*,*) "      do schedule(static,1) -----"
      if(ib.eq.50) then
         write(*,*) "OK"
!$    else if(OMP_GET_NUM_THREADS().eq.1 .and. ib.eq.1) then
!$       write(*,*) "OK"
      else
         write(*,*) "NG  SCHEDULE clause is not active"
         write(*,*) "     ib=",ib," It must be 50"
         write(*,*) "     ia=",ia
      end if
      stop
      end

