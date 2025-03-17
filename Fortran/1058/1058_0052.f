      program main
      real*4 ra, rb(10)
      integer*4 ic , it, ier
      integer*4 :: loop=10, loop2=20000, thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM

      ra = 100.
      rb = 0.
!$    thread = OMP_GET_MAX_THREADS()

!$omp parallel private(it)
!$    it = OMP_GET_THREAD_NUM() + 1
!$omp sections firstprivate(ra)
      rb(it)=rb(it)+ra*it
      do i=1,loop2
          ra=ra+it
      enddo
!$omp section
      rb(it)=rb(it)+ra*it
      do i=1,loop2
          ra=ra+it
      enddo
!$omp section
      rb(it)=rb(it)+ra*it
      do i=1,loop2
          ra=ra+it
      enddo
!$omp end sections
!$omp end parallel

      ic = 0
      ier = 0
      do i=1,thread
          ic=ic+rb(i)/(ra*i)
      enddo
      do i=thread+1, loop
          if (rb(i).ne.0.) ier=ier+1
      enddo
      write(*,*) "----- parallel private(it)"
      write(*,*) "      sections firstprivate(ra) ------"

      if(ra.eq.100. .and. ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG   SECTIONS FIRSTPRIVATE clause is not active"
         write(*,*) "     ra=", ra, " It must be 100.0"
         write(*,*) "     ic=", ic, " It must be 3"
         write(*,*) "     ier=", ier, " It must be 0"
         write(*,*) "     rb=", rb
      endif

      stop
      end

