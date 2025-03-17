      program main
      logical*8 la, lb
      integer*4 it
      integer*4 :: thread = 4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      la = .true.
!$    thread = OMP_GET_MAX_THREADS()
!$omp parallel reduction(.neqv.:la) private(it)
!$    it = OMP_GET_THREAD_NUM()
      if ( it-(it/2)*2 .eq. 0 ) then
          la = .true.
      endif
!$omp end parallel
      lb = .true.
      do i=0,thread-1
          if ( i-(i/2)*2 .eq. 0 ) then
              lb = lb .neqv. .true.
          else
              lb = lb .neqv. .false.
          endif
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel reduction(.neqv.:la) ",
     +                                        "private(it) -----"
      if(la.eqv.lb) then
         write(*,*) "OK"
      else
         write(*,*) "NG  REDUCTION(.NEQV.) clause is incorrect"
         write(*,*) "     la=", la, "  It must be ", lb
      end if
      stop
      end

