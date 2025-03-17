      program main
      integer*1 ia, ib
      integer*4 it
      integer*4 :: thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      ia = 0
!$    thread = OMP_GET_MAX_THREADS()
!$omp parallel reduction(ieor:ia) private(it)
!$    it = OMP_GET_THREAD_NUM()
      ia = (it+4)*13
!$omp end parallel
      ib = 0
      do i=0,thread-1
          ib = ieor( ib, (i+4)*13 )
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel reduction(ieor:ia) ",
     +                                        "private(it) -----"
      if(ia.eq.ib) then
         write(*,*) "OK"
      else
         write(*,*) "NG  REDUCTION(IEOR) clause is incorrect"
         write(*,*) "     ia=", ia, "  It must be ", ib
      endif
      stop
      end

