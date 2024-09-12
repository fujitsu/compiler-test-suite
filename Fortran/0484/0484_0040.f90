integer:: I=1,J=1
!$OMP PARALLEL  default(private)
!$OMP simd
DO I = 1, 100
DO J = 1, 100
END DO
END DO
!$OMP END simd
!$OMP simd
DO I1 = 1, 100
DO J2 = 1, 100
END DO
END DO
!$OMP END simd
!$OMP END PARALLEL
if( J/=1) print *,"J=",j
print *,'pass'
END

