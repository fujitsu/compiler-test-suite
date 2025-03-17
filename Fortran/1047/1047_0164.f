      program main
      integer*4 ia, ib(10), ic , it, ier
      integer*4 :: loop=10, loop2=20000, thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      ia = 100
      ib = 0
!$    thread = OMP_GET_MAX_THREADS()
!$omp parallel private(it)
!$    it = OMP_GET_THREAD_NUM() + 1
!$omp sections firstprivate(ia)
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
          ic=ic+ib(i)/(ia*i)
      enddo
      do i=thread+1, loop
          if (ib(i).ne.0) ier=ier+1
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel private(it)"
      write(*,*) "      sections firstprivate(ia) ------"
      if(ia.eq.100 .and. ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG  SECTIONS FIRSTPRIVATE clause is not active"
         write(*,*) "     ia=", ia, " It must be 100"
         write(*,*) "     ic=", ic, " It must be 3"
         write(*,*) "     ier=", ier, " It must be 0"
         write(*,*) "     ib=", ib
      endif
      stop
      end

      subroutine sub(ia, ib, it, loop2)
      integer*4 ia, ib(10), it
      integer*4 loop2
      ib(it)=ib(it)+ia*it
      do i=1,loop2
          ia=ia+it
      enddo
      return
      end
