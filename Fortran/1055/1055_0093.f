      program main
      integer*4 ia(10), ib(10), ias, ibs, it
      integer*4 :: thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      ia = 0
      ib = 0
      ias = 0
      ibs = 0
!$    thread = OMP_GET_MAX_THREADS()
!$omp parallel private(it)
!$    it = OMP_GET_THREAD_NUM() + 1
!$omp single
      ia(it)=1
!$omp end single
      ib(it)=1
!$omp end parallel
      do i=1,thread
          if(ia(i).eq.1) ias=ias+1
          if(ib(i).eq.1) ibs=ibs+1
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel private(it) single -----"
      if ( ias.eq.1 .and. ibs.eq.thread ) then
          write(*,*) "OK"
      else
          write(*,*) "NG!  SINGLE directive not active!"
          write(*,*) "       Single count=",ias
          write(*,*) "     Parallel count=",ibs
      endif
      stop
      end

