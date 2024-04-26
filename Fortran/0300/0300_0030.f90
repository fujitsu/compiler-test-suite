      real*4  :: r4 = 0

!$OMP PARALLEL
!$OMP DO
      do i = 1, 10
!$OMP ATOMIC
        r4 = r4 - 1.0
      enddo
!$OMP END DO
!$OMP END PARALLEL

      print *, r4
end
