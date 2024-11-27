INTEGER :: I
!$OMP PARALLEL default(NONE) private(kk)
!$OMP SECTIONS
!$OMP SECTION
!$OMP simd
DO I = 1, 1
END DO
!$OMP END simd
!$OMP SECTION
!$OMP simd
DO J = 1, 1
END DO
!$OMP END simd
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
