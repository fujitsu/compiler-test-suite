      program main
      integer*2 ia, ib(10)
      integer*4 it, ier
      integer*4 :: loop=10, thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      ia = 9
      ib = 0
!$    thread = OMP_GET_MAX_THREADS()
!$omp parallel shared(ia) private(it)
!$    it = OMP_GET_THREAD_NUM() + 1
      ib(it) = ia
!$omp end parallel
      ier = 0
      do i=1,thread
          if (ib(i).ne.9) ier=ier+1
      enddo
      do i=thread+1, loop
          if (ib(i).ne.0) ier=ier+1
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel shared(ia) private(it) -----"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG  SHARED clause is not active"
         write(*,*) "     ib=",ib
      endif
      stop
      end

