INTEGER :: I, kk=1, k=1
!$OMP PARALLEL
!$OMP SECTIONS
do kk=1,1
!$OMP simd
DO I = 1, 1
END DO
!$OMP END simd
END DO
!$OMP END SECTIONS

!$OMP SECTIONS
do kk=1,1
!$OMP simd
DO K = 1, 1
END DO
!$OMP END simd
end do
!$OMP END SECTIONS

!$OMP END PARALLEL
print *,"pass"
END
