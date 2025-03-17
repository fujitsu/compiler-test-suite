      program main
      integer*2 ia, ib, it
      integer*4 :: thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      ia = 1
      ib = 1
!$    thread = OMP_GET_MAX_THREADS()
!$omp parallel reduction(iand:ia) private(it)
!$    it = OMP_GET_THREAD_NUM()
      ia = it*2+1
!$omp end parallel
      do i=0,thread-1
          ib = iand( ib, i*2+1 )
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel reduction(iand:ia) ",
     +                                  "private(it) -----"
      if(ia.eq.ib) then
         write(*,*) "OK"
      else
         write(*,*) "NG  REDUCTION(IAND) clause is incorrect"
         write(*,*) "     ia=", ia, "  It must be ", ib
      endif
      stop
      end

