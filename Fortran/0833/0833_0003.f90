INTEGER :: I
!$OMP PARALLEL default(NONE) private(kk)
!$OMP SECTIONS
do kk=1,1
!$OMP simd
DO I = 1, 1
END DO
!$OMP END simd
END DO
!$OMP END SECTIONS

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
