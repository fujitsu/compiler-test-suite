      program main
      integer*8 ia(10), ib(10), it, ier
      integer*4 :: loop=10, thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      ia = 0
      ib = 0
!$    thread = OMP_GET_MAX_THREADS()
!$omp parallel private(ia,it)
!$    it = OMP_GET_THREAD_NUM() + 1
      ia(it) = it*10
      ib(it) = ia(it)
!$omp end parallel
      ier = 0
      do i=1,loop
          if (ia(i).ne.0) ier=ier+1
      enddo
      do i=1,thread
          if (ib(i).ne.i*10) ier=ier+1
      enddo
      do i=thread+1, loop
          if (ib(i).ne.0) ier=ier+1
      enddo
      write(*,*) "----- test --",
     +                        " parallel private(ia) ------"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG  PRIVATE clause is not active"
         write(*,*) "     ier=", ier
         write(*,*) "     ia=", ia
         write(*,*) "     ib=",ib
      endif
      stop
      end

