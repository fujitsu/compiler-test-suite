      program main
      integer*1 ia
      integer*4 ib, ic, it
      integer*4 :: thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      ia = 0
      ic = 2
!$    thread = OMP_GET_MAX_THREADS()
!$omp parallel reduction(+:ia) private(it)
!$    it = OMP_GET_THREAD_NUM()
      ia = ia + mod(it,9) + ic
!$omp end parallel
      ib = 0
      do i=0, thread-1
          ib = ib + mod(i,9) + ic
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel reduction(+:ia) private(it) -----"
      if(ia.eq.ib) then
         write(*,*) "OK"
      else
         write(*,*) "NG  REDUCTION(+) clause is incorrect"
         write(*,*) "     ia=", ia, "  It must be ", ib
      endif
      stop
      end

