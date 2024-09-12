implicit none 
integer:: i=1,J=1, i1=1, j1=1
!$OMP parallel
!$OMP sections
 !$OMP atomic
 i=i+1
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

