      program main
      integer*4 ia, ib
      integer*4 :: loop=50
      ia = 0
!$omp parallel
!$omp do reduction(ieor:ia)
      do i=1, loop
          ia = ieor( ia, i*53 )
      enddo
!$omp end do
!$omp end parallel
      ib = 0
      do i=1, loop
          ib = ieor( ib, i*53 )
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel reduction(ieor:ia) -----"
      if(ia.eq.ib) then
         write(*,*) "OK"
      else
         write(*,*) "NG  REDUCTION(IEOR) clause is incorrect"
         write(*,*) "     ia=", ia, "  It must be ", ib
      endif
      stop
      end

