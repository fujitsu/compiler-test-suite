c
c
c
c
c
      program main
      logical*2 la, lb
      integer*4 :: loop=50
c
      la = .false.
c
!$omp parallel
!$omp do reduction(.eqv.:la)
      do i=1, loop
          if ( i-(i/3)*3 .eq. 0 ) then
              la = la .eqv. .false.
          else
              la = la .eqv. .true.
          endif
      enddo
!$omp end do
!$omp end parallel
c
      lb = .false.
      do i=1, loop
          if ( i-(i/3)*3 .eq. 0 ) then
              lb = lb .eqv. .false.
          else
              lb = lb .eqv. .true.
          endif
      enddo
      write(*,*) "----- TEST --"
      write(*,*) "      parallel do reduction(.eqv.:la) -----"
      if(la.eqv.lb) then
         write(*,*) "OK"
      else
         write(*,*) "NG!  REDUCTION(.EQV.) clause is incorrect!"
         write(*,*) "     la=", la, "  It must be ", lb
      endif
      stop
      end

