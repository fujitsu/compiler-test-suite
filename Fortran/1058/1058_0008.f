      program main
      real*8 ra, rb(10)
      integer*4 it, ier
      integer*4 :: loop=10, thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM

      ra = 9
      rb = 0
!$    thread = OMP_GET_MAX_THREADS()

!$omp parallel firstprivate(ra) private(it)
!$    it = OMP_GET_THREAD_NUM() + 1
      rb(it) = ra
      do i=1,loop
          ra=ra+i
      enddo
!$omp end parallel

      ier = 0
      do i=1,thread
          if (rb(i).ne.9) ier=ier+1
      enddo
      do i=thread+1, loop
          if (rb(i).ne.0) ier=ier+1
      enddo
      write(*,*) "----- parallel firstprivate(ra) private(it) -----"
      if(ier.eq.0 .and. ra.eq.9) then
         write(*,*) "OK"
      else
         write(*,*) "NG   FIRSTPRIVATE clause is not active"
         write(*,*) "     rb=",rb
      endif

      stop
      end

