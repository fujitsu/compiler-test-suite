      program main
      integer*8 ia, ib, it
      integer*4 :: thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      ia = 0
!$    thread = OMP_GET_MAX_THREADS()
!$omp parallel reduction(min:ia) private(it)
!$    it = OMP_GET_THREAD_NUM()
      ia = (7+it*3)*((-1)**it)
!$omp end parallel
      ib = 0
      do i=0,thread-1
          ib = min( ib, (7+i*3)*((-1)**i) )
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel reduction(min:ia) ",
     +                                        "private(it) -----"
      if(ia.eq.ib) then
         write(*,*) "OK"
      else
         write(*,*) "NG  REDUCTION(MIN) clause is incorrect"
         write(*,*) "     ia=", ia, "  It must be ", ib
      endif
      stop
      end

