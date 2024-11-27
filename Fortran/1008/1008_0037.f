c
c
c
c
c
      program main
      logical*2 la, lb
      integer*4 :: loop=50
c
      la = .true.
c
!$omp parallel
!$omp do reduction(.neqv.:la)
      do i=1,loop
         if ( mod(i,3) .eq. 0 ) then
            la = la .neqv. .true.
         else
            la = la .neqv. .false.
         endif
      enddo
!$omp end do
!$omp end parallel
c
      lb = .true.
      do i=1,loop
         if ( mod(i,3) .eq. 0 ) then
            lb = lb .neqv. .true.
         else
            lb = lb .neqv. .false.
         endif
      enddo
      write(*,*) "----- TEST --"
      write(*,*) "      parallel do reduction(.neqv.:la) -----"
      if(la.eqv.lb) then
         write(*,*) "OK"
      else
         write(*,*) "NG!  REDUCTION(.NEQV.) clause is incorrect!"
         write(*,*) "     la=", la, "  It must be ", lb
      end if
      stop
      end

