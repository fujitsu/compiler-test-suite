!
!
!
!
!
      program main
      integer*4 ia, ib, ic, it
      integer,parameter :: k4=selected_int_kind(4)
      integer*4 :: thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
!
      ia = 10_k4
      ic = 11
!$    thread = OMP_GET_MAX_THREADS()
!
!$omp parallel reduction(+:ia) private(it)
!$    it = OMP_GET_THREAD_NUM()
      ia = ia + it + ic
!$omp end parallel
!
      ib = 10
      do i=0, thread-1
          ib = ib + i + ic
      enddo
      write(*,*) "----- TEST --"
      write(*,*) "      parallel reduction(+:ia) private(it) -----"
      if(ia.eq.ib) then
         write(*,*) "OK"
      else
         write(*,*) "NG!  REDUCTION(+) clause is incorrect!"
         write(*,*) "     ia=", ia, "  It must be ", ib
      endif
      stop
      end

