IMPLICIT NONE
INTEGER(4), PARAMETER :: N=1024
INTEGER(4) :: i,j,k
REAL(8) :: a(N,N),b(N,N),c(N,N)

a=1.0
b=1.0
c=0.0

DO i=1,N
   DO j=1,N
      DO k=1,N
         c(i,j) = a(i,k) * b(k,j) + c(i,j)
      END DO
   END DO
END DO

PRINT *,"c(1,1) := ",c(1,1)
END
