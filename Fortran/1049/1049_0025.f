      program main
      logical*8 la, lb
      integer*4 :: loop=50
      la = .true.
!$omp parallel
!$omp do reduction(.or.:la)
      do i=1, loop
          if ( i-(i/3)*3 .eq. 0 ) then
              la = la .or. .true.
          else
              la = la .or. .false.
          endif
      enddo
!$omp end do
!$omp end parallel
      lb = .true.
      do i=1, loop
          if ( i-(i/3)*3 .eq. 0 ) then
              lb = lb .or. .true.
          else
              lb = lb .or. .false.
          endif
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel reduction(.or.:la) -----"
      if(la.eqv.lb) then
         write(*,*) "OK"
      else
         write(*,*) "NG  REDUCTION(.OR.) clause is incorrect"
         write(*,*) "     la=", la, "  It must be ", lb
      endif
      stop
      end

