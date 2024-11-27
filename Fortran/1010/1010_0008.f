c
c
c
c
c
c
      program main
      integer*4 ib(10), it, ier
      integer*4 :: loop=10, thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      integer*4 ma, mb(10)
      common /com1/ ma, mb
c
      ib = 0
      ma = 10
      do i=1,loop
          mb(i)=i
      enddo
!$    thread = OMP_GET_MAX_THREADS()
c
!$omp parallel firstprivate(/com1/) private(it)
!$    it = OMP_GET_THREAD_NUM() + 1
      ib(it) = ma+mb(it)
      ma=0
      mb(it)=0
!$omp end parallel
c
      ier = 0
      do i=1,thread
          if (ib(i).ne.ma+mb(i)) ier=ier+1
      enddo
      do i=thread+1, loop
          if (ib(i).ne.0) ier=ier+1
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel firstprivate(/com1/) private(it) -----"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG  FIRSTPRIVATE clause is not active"
         write(*,*) "    ier=",ier
         write(*,*) "     ib=",ib
      endif
      stop
      end

