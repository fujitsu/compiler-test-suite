      program main
      integer*4 ia(10), ib(10), ic, ier
      integer*4 :: loop=10, loop2=90000, thread=4
!$    integer*4 OMP_GET_MAX_THREADS
      ia = 0
      ib = 0
!$    thread = OMP_GET_MAX_THREADS()
!$omp parallel
      call sub(ia, ib, loop, loop2)
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
      write(*,*) "      parallel sections -----"
      if( ic.eq.3 .and. ier.eq.0 )then
         write(*,*) "OK"
      else
         write(*,*) "NG!  SECTIONS clause is not active"
         write(*,*) "     ic=",ic,"  It must be 3"
         write(*,*) "     ia=",ia
         write(*,*) "     ib=",ib
      endif
      stop
      end

      subroutine sub(ia, ib, loop, loop2)
      integer*4 loop, loop2
      integer*4 ia(loop), ib(loop)
      integer*4 it
!$    integer*4 OMP_GET_THREAD_NUM
!$    it = OMP_GET_THREAD_NUM() + 1
!$omp sections
      do i=1,loop2
          ib(1)=ib(1)+1
      enddo
      ia(it) = ia(it) + it
!$omp section
      do i=1,loop2
          ib(2)=ib(2)+1
      enddo
      ia(it) = ia(it) + it
!$omp section
      do i=1,loop2
          ib(3)=ib(3)+1
      enddo
      ia(it) = ia(it) + it
!$omp end sections
      return
      end
