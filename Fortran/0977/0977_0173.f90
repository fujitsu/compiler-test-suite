      program main
      logical*2 la(2), lb
      integer*4 it
      integer*4 :: thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      it=0
      la = .false.
!$    thread = OMP_GET_MAX_THREADS()
!$omp parallel reduction(.and.:la) private(it)
!$    it = OMP_GET_THREAD_NUM()
      if ( it-(it/2)*2 .eq. 0 ) then
          la = .false.
      endif
!$omp end parallel
      lb = .false.
      do i=0,thread-1
          if ( i-(i/2)*2 .eq. 0 ) then
              lb = lb .and. .false.
          else
              lb = lb .and. .true.
          endif
      enddo
      write(1,*) "      parallel reduction(.and.:la) ",&
     &                                        "private(it) -----"
      if(any(la.eqv.lb)) then
         print *,'pass'
      else
         write(*,*) "NG  REDUCTION(.AND.) clause is incorrect"
         write(*,*) "     la=", la, "  It must be ", lb
      endif
      end

