INTEGER :: I
!$OMP PARALLEL
!$OMP SECTIONS
!$OMP SECTION
!$OMP simd
DO I = 1, 1
END DO
!$OMP END simd
!$OMP END SECTIONS
!$OMP END PARALLEL
print *,"pass"
END