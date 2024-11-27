!$OMP PARALLEL default(NONE) private(kk)

!$OMP do
do kk=1,1
!$OMP simd
DO K = 1, 1
END DO
!$OMP END simd
end do
!$OMP END do

!$OMP END PARALLEL
END
