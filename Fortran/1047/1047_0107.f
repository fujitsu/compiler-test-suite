      program main
      integer*4 ia, ib
      integer*4 :: loop=50
      ia = 45
!$omp parallel
!$omp do reduction(iand:ia)
      do i=1, loop
          ia = iand( ia, i*8+5 )
      enddo
!$omp end do
!$omp end parallel
      ib = 45
      do i=1, loop
          ib = iand( ib, i*8+5 )
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel reduction(iand:ia) -----"
      if(ia.eq.ib) then
         write(*,*) "OK"
      else
         write(*,*) "NG  REDUCTION(IAND) clause is incorrect"
         write(*,*) "     ia=", ia, "  It must be ", ib
      endif
      stop
      end

