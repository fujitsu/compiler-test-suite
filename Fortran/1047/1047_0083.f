      program main
      integer*4 ia, ib(10), ier
      integer*4 :: loop=10, thread=4
      integer*4 OMP_GET_MAX_THREADS
      ia = 9
      ib = 0
!$    thread = OMP_GET_MAX_THREADS()
      call sub(ia, ib)
      ier = 0
      do i=1,thread
          if (ib(i).ne.9) ier=ier+1
      enddo
      do i=thread+1, loop
          if (ib(i).ne.0) ier=ier+1
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel firstprivate(ia) private(it) -----"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG  FIRSTPRIVATE clause is not active"
         write(*,*) "     ib=",ib
      endif
      stop
      end

      subroutine sub(ia, ib)
      integer*4 ia, ib(10)
      integer*4 it
!$    integer*4 OMP_GET_THREAD_NUM
!$omp parallel firstprivate(ia) private(it)
!$    it = OMP_GET_THREAD_NUM() + 1
      ib(it) = ia
!$omp end parallel
      return
      end
