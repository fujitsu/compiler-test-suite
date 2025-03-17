      program main
      integer*4 ia, ib
      integer*4 :: loop=50
      ia = 0
!$omp parallel
!$omp do reduction(ior:ia)
      do i=1, loop
          ia = ior( ia, i*91 )
      enddo
!$omp end do
!$omp end parallel
      ib = 0
      do i=1, loop
          ib = ior( ib, i*91 )
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel do reduction(ior:ia) -----"
      if(ia.eq.ib) then
         write(*,*) "OK"
      else
         write(*,*) "NG  REDUCTION(IOR) clause is incorrect"
         write(*,*) "     ia=", ia, "  It must be ", ib
      endif
      stop
      end

