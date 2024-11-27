      REAL(8) :: M0/Z'8000000000000000'/
      CALL SUB(M0, M0)
print *,'pass'
      CONTAINS

      SUBROUTINE SUB(M0, M1)
      REAL(8) :: M0
      REAL(8), OPTIONAL :: M1
      if(CMPLX(M0, M1, KIND = 8)/=0)print *,'Error-1'
      if(KIND(CMPLX(M0, M1, KIND = 8))/=8)print *,'Error-2'
      if (DCMPLX(M0, M1)/=0)print *,'Error-3'
      if (KIND(DCMPLX(M0, M1))/=8)print *,'Error-4'
      END SUBROUTINE
      END
