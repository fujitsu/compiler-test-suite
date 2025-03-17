      program main
      real*4 ia, ib, ic
      integer*4 it
      integer*4 :: thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM

      ia = 10.93
      ic = 1.357
!$    thread = OMP_GET_MAX_THREADS()

!$omp parallel reduction(+:ia) private(it)
!$    it = OMP_GET_THREAD_NUM()
      ia = ia + it*5.2 - ic*it/7.1
!$omp end parallel

      ib = 10.93
      do i=0, thread-1
          ib = ib + i*5.2 - ic*i/7.1
      enddo
      write(*,*) "----- parallel reduction(+:ia) private(it) -----"
      if(abs(ia-ib).le.abs(ib)*1e-4) then
         write(*,*) "OK"
      else
         write(*,*) "NG   REDUCTION(+) clause is incorrect"
         write(*,*) "     ia=", ia, "  It must be ", ib
      endif

      stop
      end

