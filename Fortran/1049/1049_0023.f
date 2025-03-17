      program main
      logical*8 la, lb
      integer*4 :: loop=50
      la = .false.
!$omp parallel
!$omp do reduction(.and.:la)
      do i=1,loop
          if ( i-(i/3)*3 .eq. 0 ) then
              la = la .and. .false.
          else
              la = la .and. .true.
          endif
      enddo
!$omp end do
!$omp end parallel
      lb = .false.
      do i=1,loop
          if ( i-(i/3)*3 .eq. 0 ) then
              lb = lb .and. .false.
          else
              lb = lb .and. .true.
          endif
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel do reduction(.and.:la) -----"
      if(la.eqv.lb) then
         write(*,*) "OK"
      else
         write(*,*) "NG  REDUCTION(.AND.) clause is incorrect"
         write(*,*) "     la=", la, "  It must be ", lb
      endif
      stop
      end

