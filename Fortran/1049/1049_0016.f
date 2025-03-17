      program main
      logical*4 la, lb
      integer*4 it
      integer*4 :: thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      la = .false.
!$    thread = OMP_GET_MAX_THREADS()
!$omp parallel reduction(.and.:la) private(it)
!$    it = OMP_GET_THREAD_NUM()
      call sub(la, it)
!$omp end parallel
      lb = .false.
      do i=0,thread-1
          if ( i-(i/2)*2 .eq. 0 ) then
              lb = lb .and. .false.
          else
              lb = lb .and. .true.
          endif
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel reduction(.and.:la) ",
     +                                        "private(it) -----"
      if(la.eqv.lb) then
         write(*,*) "OK"
      else
         write(*,*) "NG  REDUCTION(.AND.) clause is incorrect"
         write(*,*) "     la=", la, "  It must be ", lb
      endif
      stop
      end

      subroutine sub(la, it)
      logical*4 la
      integer*4 it
      if ( it-(it/2)*2 .eq. 0 ) then
          la = .false.
      endif
      return
      end
