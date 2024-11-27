c
c
c
c
c
c
      program main
      integer*2 ia
      integer*4 ic, it, ier, ib(10)
      integer*2 :: loop=10, loop2=2000, thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
c
      ia = -1
      ib = 0
!$    thread = OMP_GET_MAX_THREADS()
c
!$omp parallel private(it)
!$    it = OMP_GET_THREAD_NUM() + 1
!$omp sections private(ia)
      ia=0
      do i=1,loop2
          ia=ia+it
      enddo
      ib(it)=ib(it)+ia
!$omp section
      ia=0
      do i=1,loop2
          ia=ia+it
      enddo
      ib(it)=ib(it)+ia
!$omp section
      ia=0
      do i=1,loop2
          ia=ia+it
      enddo
      ib(it)=ib(it)+ia
!$omp end sections
!$omp end parallel
c
      ic = 0
      ier = 0
      do i=1,thread
          ic=ic + ib(i)/(loop2*i)
      enddo
      do i=thread+1, loop
          if (ib(i).ne.0) ier=ier+1
      enddo
      write(*,*) "----- TEST --"
      write(*,*) "      parallel private(it)"
      write(*,*) "      sections private(ia) ------"
      if(ia.eq.-1 .and. ic.eq.3 .and. ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG!  SECTIONS PRIVATE clause is not active"
         write(*,*) "     ia=", ia, " It must be -1"
         write(*,*) "     ic=", ic, " It must be 3"
         write(*,*) "     ib=", ib
      endif
      stop
      end

