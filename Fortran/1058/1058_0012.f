      program main
      real*16 ra, rb, rc
      integer*4 it
      integer*4 :: thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM

      ra = 10.93
      rb = 10.93
      rc = 1.357
!$    thread = OMP_GET_MAX_THREADS()

!$omp parallel reduction(+:ra) private(it)
!$    it = OMP_GET_THREAD_NUM()
      ra = ra + it*5.2 - rc*it/7.1
!$omp end parallel

      do i=0, thread-1
          rb = rb + i*5.2 - rc*i/7.1
      enddo
      write(*,*) "----- parallel reduction(+:ra) private(it) -----"
      if(abs(ra-rb).le.abs(rb)*1e-20) then
         write(*,*) "OK"
      else
         write(*,*) "NG   REDUCTION(+) clause is incorrect"
         write(*,*) "     ra=", ra
         write(*,*) "     rb=", rb
      endif

      stop
      end

