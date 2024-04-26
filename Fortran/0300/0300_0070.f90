      integer*4 i
!$OMP PARALLEL
!$OMP DO
      do i = 1,10
        if(i.eq.3) stop
      enddo
!$OMP END DO
!$OMP END PARALLEL
      end
