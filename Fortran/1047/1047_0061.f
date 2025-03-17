      program main
      integer*8 ib(10), it, ier
      integer*4 :: loop=10, thread=4
!$    integer*4 OMP_GET_MAX_THREADS
      it = 9
      ib = 9
!$    thread = OMP_GET_MAX_THREADS()
!$omp parallel private(it)
      call sub(it, ib)
!$omp end parallel
      ier = 0
      do i=1,thread
          if (ib(i).ne.i) ier=ier+1
      enddo
      do i=thread+1, loop
          if (ib(i).ne.9) ier=ier+1
      enddo
      write(*,*) "----- test --",
     +                        " parallel private(it) ------"
      if(it.eq.9 .and. ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG  PRIVATE clause is not active"
         write(*,*) "     it=", it, " It must be 9"
         write(*,*) "     ib=",ib
      endif
      stop
      end

      subroutine sub(it, ib)
      integer*8 it, ib(10)
!$    integer*4 OMP_GET_THREAD_NUM
!$    it = OMP_GET_THREAD_NUM() + 1
      ib(it) = it
      return
      end
