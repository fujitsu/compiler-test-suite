MODULE WRMS
      PUBLIC MOVEF,XD
      COMMON /ARRAY/ a,b,c
      equivalence(a,a1)
      equivalence(b,b1)
      equivalence(c,c1)
END MODULE WRMS

MODULE PWR1
    USE WRMS
END MODULE PWR1

MODULE BWR1
    USE WRMS
    PRIVATE
END MODULE BWR1

USE BWR1
USE PWR1
!$omp parallel private(/ARRAY/)
!$omp end parallel
print *,'pass'
END
