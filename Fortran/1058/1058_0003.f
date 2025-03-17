      program main
      real*16 ra, rb(10)
      integer*4 it, ier
      integer*4 :: loop=10, thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM

      ra = 99.0
      rb = 99.0
!$    thread = OMP_GET_MAX_THREADS()

!$omp parallel private(ra,it)
!$    it = OMP_GET_THREAD_NUM() + 1
      ra = it
      rb(it) = ra
!$omp end parallel

      ier = 0
      do i=1,thread
          if (rb(i).ne.i) ier=ier+1
      enddo
      do i=thread+1, loop
          if (rb(i).ne.99.0) ier=ier+1
      enddo
      write(*,*) "----- parallel private(ra,it) ------"
      if(ra.eq.99.0 .and. ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG   PRIVATE clause is not active"
         write(*,*) "     ra=", ra, " It must be 99.0"
         write(*,*) "     rb=",rb
      endif

      stop
      end

