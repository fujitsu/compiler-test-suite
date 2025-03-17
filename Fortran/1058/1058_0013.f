      program main
      real*4 ra, rb
      integer*4 it
      integer*4 :: thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM

      ra = 3.0076
      rb = 3.0076
!$    thread = OMP_GET_MAX_THREADS()

!$omp parallel reduction(*:ra) private(it)
!$    it = OMP_GET_THREAD_NUM() + 1
      ra = ra * it * 3.159
!$omp end parallel

      do i=1,thread
          rb = rb * i * 3.159
      enddo
      write(*,*) "----- parallel reduction(*:ra) private(it) -----"
      if(abs(ra-rb).lt.abs(rb)*1e-4) then
         write(*,*) "OK"
      else
         write(*,*) "NG   REDUCTION(*) clause is incorrect"
         write(*,*) "     ra=", ra, "  It must be ", rb
      endif

      stop
      end

