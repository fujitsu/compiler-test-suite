      program main
      integer*4 ia(10), ib(10), ic, it, ier
      integer*4 :: loop=10, loop2=90000, thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      ia = 0
      ib = 0
!$    thread = OMP_GET_MAX_THREADS()
!$omp parallel private(it)
!$    it = OMP_GET_THREAD_NUM() + 1
!$omp sections
      call sub(ia, ib(1), it, loop2)
!$omp section
      call sub(ia, ib(2), it, loop2)
!$omp section
      call sub(ia, ib(3), it, loop2)
!$omp end sections
!$omp end parallel
      ic = 0
      ier = 0
      do i=1,thread
          ic=ic+ia(i)/i
      enddo
      do i=thread+1, loop
          if (ia(i).ne.0) ier=ier+1
      enddo
      do i=1, 3
          if (ib(i).ne.loop2) ier=ier+1
      enddo
      write(*,*) "----- test--"
      write(*,*) "      parallel private(it) sections -----"
      if( ic.eq.3 .and. ier.eq.0 )then
         write(*,*) "OK"
      else
         write(*,*) "NG!  SECTIONS clause is not active"
         write(*,*) "     ic=",ic,"  It must be 3"
         write(*,*) "     ia=",ia
      endif
      stop
      end

      subroutine sub(ia, ib, it, loop2)
      integer*4 ia(10), ib, it, loop2
      do i=1,loop2
          ib=ib+1
      enddo
      ia(it) = ia(it) + it
      return
      end
