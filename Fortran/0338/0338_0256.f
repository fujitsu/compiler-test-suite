      INTEGER*2   A1,A2,A3
      INTEGER*4   B1,B2,B3
      LOGICAL*1   C1,C2,C3
      LOGICAL*4   D1,D2,D3
C
      DATA A1,A2,A3/1,2,3/
      DATA B1,B2,B3/2,3,4/
      DATA C1,C2,C3/.FALSE.,.TRUE.,.FALSE./
      DATA D1,D2,D3/.TRUE.,.TRUE.,.FALSE./
C
      A1 = IEOR(A2,A3)
      B1 = IEOR(B2,B3)
      C1 = C2.NEQV.C3
      D1 = D2.NEQV.D3
C
      WRITE(6,*) A1,A2,A3
      WRITE(6,*) B1,B2,B3
      WRITE(6,*) C1,C2,C3
      WRITE(6,*) D1,D2,D3
      STOP
      END
