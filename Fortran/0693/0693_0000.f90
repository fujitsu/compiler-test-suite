      IMPLICIT CHARACTER*  1 (A)
      IMPLICIT CHARACTER*3   (Z)
      COMMON /CCOM/   AA
!$omp threadprivate(/CCOM/)
      DIMENSION  A1(3)
      Z1=ZINIT(  A1(1),  AA)
      PRINT *,'pass'
      END
      FUNCTION ZINIT(A1,  AA)
      IMPLICIT CHARACTER*  1 (A)
      IMPLICIT CHARACTER*3   (Z)
      CHARACTER*(*)          A1
      ZINIT='x'
      END
