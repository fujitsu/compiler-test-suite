      program main
      integer*4 ia, ib, it
      integer*4 :: thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      ia = 0
!$    thread = OMP_GET_MAX_THREADS()
!$omp parallel reduction(max:ia) private(it)
!$    it = OMP_GET_THREAD_NUM()
      ia = (5+it*2)*((-1)**it)
!$omp end parallel
      ib = 0
      do i=0,thread-1
          ib = max( ib, (5+i*2)*((-1)**i) )
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel reduction(max:ia) ",
     +                                        "private(it) -----"
      if(ia.eq.ib) then
         write(*,*) "OK"
      else
         write(*,*) "NG  REDUCTION(MAX) clause is incorrect"
         write(*,*) "     ia=", ia, "  It must be ", ib
      end if
      stop
      end

