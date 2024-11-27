c
c
c
c
c
      program main
      logical*2 la, lb
      integer*4 it
      integer*4 :: thread = 4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
c
      la = .false.
!$    thread = OMP_GET_MAX_THREADS()
c
!$omp parallel reduction(.eqv.:la) private(it)
!$    it = OMP_GET_THREAD_NUM()
      if ( it-(it/2)*2 .eq. 0 ) then
          la = .false.
      endif
!$omp end parallel
c
      lb = .false.
      do i=0,thread-1
          if ( i-(i/2)*2 .eq. 0 ) then
              lb = lb .eqv. .false.
          else
              lb = lb .eqv. .true.
          endif
      enddo
      write(*,*) "----- TEST --"
      write(*,*) "      parallel reduction(.eqv.:la) ",
     +                                        "private(it) -----"
      if(la.eqv.lb) then
         write(*,*) "OK"
      else
         write(*,*) "NG!  REDUCTION(.EQV.) clause is incorrect!"
         write(*,*) "     la=", la, "  It must be ", lb
      end if
      stop
      end

