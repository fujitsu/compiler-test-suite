!$OMP parallel
!$OMP sections
!$OMP parallel
DO I = 1, 1
   DO J = 1, 1
   END DO
END DO
!$OMP END parallel
!$OMP END sections
!$OMP parallel
DO I1 = 1, 1
   DO J1 = 1, 1
   END DO
END DO
!$OMP END parallel
!$OMP end parallel
print *,'pass'
END program

