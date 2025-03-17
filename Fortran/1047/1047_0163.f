      program main
      integer*4 ia, ib(10), ic , it, ier
      integer*4 :: loop=10, loop2=90000, thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      ia = -1
      ib = 0
!$    thread = OMP_GET_MAX_THREADS()
!$omp parallel private(it)
!$    it = OMP_GET_THREAD_NUM() + 1
!$omp sections private(ia)
      call sub(ia, ib, it, loop2)
!$omp section
      call sub(ia, ib, it, loop2)
!$omp section
      call sub(ia, ib, it, loop2)
!$omp end sections
!$omp end parallel
      ic = 0
      ier = 0
      do i=1,thread
          ic=ic + ib(i)/(loop2*i)
      enddo
      do i=thread+1, loop
          if (ib(i).ne.0) ier=ier+1
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel private(it)"
      write(*,*) "      sections private(ia) ------"
      if(ia.eq.-1 .and. ic.eq.3 .and. ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG  SECTIONS PRIVATE clause is not active"
         write(*,*) "     ia=", ia, " It must be -1"
         write(*,*) "     ic=", ic, " It must be 3"
         write(*,*) "     ib=", ib
      endif
      stop
      end

      subroutine sub(ia, ib, it, loop2)
      integer*4 ia, ib(10), it
      integer*4 loop2
      ia=0
      do i=1,loop2
          ia=ia+it
      enddo
      ib(it)=ib(it)+ia
      return
      end
