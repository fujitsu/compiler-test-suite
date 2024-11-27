c
c
c
c
c
      program main
      real*16 ra, rb(10)
      integer*4 ic , it, ier
      integer*4 :: loop=10, loop2=9000000, thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
c
      ra = -1.
      rb = 0.
!$    thread = OMP_GET_MAX_THREADS()
c
!$omp parallel private(it)
!$    it = OMP_GET_THREAD_NUM() + 1
!$omp sections private(ra)
      ra=0.
      do i=1,loop2
          ra=ra+it
      enddo
      rb(it)=rb(it)+ra
!$omp section
      ra=0.
      do i=1,loop2
          ra=ra+it
      enddo
      rb(it)=rb(it)+ra
!$omp section
      ra=0.
      do i=1,loop2
          ra=ra+it
      enddo
      rb(it)=rb(it)+ra
!$omp end sections
!$omp end parallel
c
      ic = 0
      ier = 0
      do i=1,thread
          ic=ic + rb(i)/(loop2*i)
      enddo
      do i=thread+1, loop
          if (rb(i).ne.0.) ier=ier+1
      enddo
      write(*,*) "----- TEST --"
      write(*,*) "      parallel private(it)"
      write(*,*) "      sections private(ra) ------"
      if(ra.eq.-1. .and. ic.eq.3 .and. ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG!  SECTIONS PRIVATE clause is not active"
         write(*,*) "     ra=", ra, " It must be -1.0"
         write(*,*) "     ic=", ic, " It must be 3"
         write(*,*) "     rb=", rb
      endif
      stop
      end

