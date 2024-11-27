c
c
c
c
c
      program main
      logical*2 la, lb
      integer*4 :: thread=4
!$    integer*4 OMP_GET_MAX_THREADS
c
      la = .false.
!$    thread = OMP_GET_MAX_THREADS()
c
      call sub(la)
c
      lb = .false.
      do i=0,thread-1
          if ( i-(i/2)*2 .eq. 0 ) then
              lb = lb .and. .false.
          else
              lb = lb .and. .true.
          endif
      enddo
      write(*,*) "----- TEST --"
      write(*,*) "      parallel reduction(.and.:la) ",
     +                                        "private(it) -----"
      if(la.eqv.lb) then
         write(*,*) "OK"
      else
         write(*,*) "NG!  REDUCTION(.AND.) clause is incorrect!"
         write(*,*) "     la=", la, "  It must be ", lb
      endif
c
      stop
      end

      subroutine sub(la)
      logical*2 la
      integer*4 it
!$    integer*4 OMP_GET_THREAD_NUM
c
!$omp parallel reduction(.and.:la) private(it)
!$    it = OMP_GET_THREAD_NUM()
      if ( it-(it/2)*2 .eq. 0 ) then
          la = .false.
      endif
!$omp end parallel
c
      return
      end
