      program main
      real*8 ra, rb
      integer*4 it
      integer*4 :: thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM

      ra = 0.0
      rb = 0.0
!$    thread = OMP_GET_MAX_THREADS()

!$omp parallel reduction(min:ra) private(it)
!$    it = OMP_GET_THREAD_NUM()
      ra = (2.09+it*1.0019)*((-1)**it)
!$omp end parallel

      do i=0,thread-1
          rb = min( rb, (2.09+i*1.0019)*((-1)**i) )
      enddo
      write(*,*) "----- parallel reduction(min:ra) ",
     +                                        "private(it) -----"
      if(ra.eq.rb) then
         write(*,*) "OK"
      else
         write(*,*) "NG   REDUCTION(MIN) clause is incorrect"
         write(*,*) "     ra=", ra
         write(*,*) "     rb=", rb
      endif

      stop
      end

