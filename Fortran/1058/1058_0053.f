      program main
      real*4 ra
      integer*4 ib(10), ic , it, ier
      integer*4 :: loop=10, loop2=20000, thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM

      ra = 15.
      ib = 0
!$    thread = OMP_GET_MAX_THREADS()

!$omp parallel private(it)
!$    it = OMP_GET_THREAD_NUM() + 1
!$omp sections firstprivate(ra) lastprivate(ra)
      ib(it)=ib(it)+it
      do i=1,loop2
          ra=ra+it
      enddo
      ra=loop2*1
!$omp section
      ib(it)=ib(it)+it
      do i=1,loop2
          ra=ra+it
      enddo
      ra=loop2*2
!$omp section
      ib(it)=ib(it)+it
      do i=1,loop2
          ra=ra+it
      enddo
      ra=loop2*3
!$omp end sections
!$omp end parallel

      ic = 0
      ier = 0
      do i=1,thread
          ic=ic+ib(i)/i
      enddo
      do i=thread+1,loop
          if (ib(i).ne.0) ier=ier+1
      enddo
      write(*,*) "----- parallel private(it)"
      write(*,*) "      sections lastprivate(ra) ------"
      if(ra.eq.real(loop2*3) .and. ic.eq.3 .and. ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG   SECTIONS LASTPRIVATE clause is not active"
         write(*,*) "     ra=", ra, " It must be ",real(loop2*3)
         write(*,*) "     ic=", ic, " It must be 3"
         write(*,*) "     ib=", ib
      end if

      stop
      end

