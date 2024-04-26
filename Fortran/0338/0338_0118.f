      PROGRAM MAIN
      REAL*4 A1(10),B1(10),C1(10)
      REAL*8 A2(10),B2(10),C2(10)
      INTEGER*4 A3(10),B3(10),C3(10)
      LOGICAL*4 A4(10),B4(10),C4(10)
      DATA A1/10*0.0/,B1/10*5.1/,C1/10*5.6/
      DATA A2/10*0.0/,B2/10*6.1/,C2/10*2.3/
      DATA A3/10*0/,B3/10*5/,C3/10*6/
      DATA A4/10*.TRUE./,B4/10*.TRUE./,C4/5*.FALSE.,5*.TRUE./
      CALL SUB1(A1,A2,A3,A4,B1,B2,B3,B4,C1,C2,C3,C4)
      CALL SUB2
      STOP
      END
C
      SUBROUTINE SUB1(A1,A2,A3,A4,B1,B2,B3,B4,C1,C2,C3,C4)
      REAL*4 A1(10),B1(10),C1(10)
      REAL*8 A2(10),B2(10),C2(10)
      INTEGER*4 A3(10),B3(10),C3(10)
      LOGICAL*4 A4(10),B4(10),C4(10)
      DO 1 I=1,10
    1 A1(I) = B1(I) + C1(I)
      DO 2 I=1,10
    2 A2(I) = B2(I) + C2(I)
      DO 3 I=1,10
    3 A3(I) = B3(I) + C3(I)
      DO 4 I=1,10
    4 A4(I) = B4(I) .AND. C4(I)
      WRITE(6,11) A1,B1,C1
      WRITE(6,11) A2,B2,C2
   11 FORMAT (5F10.5)
      WRITE(6,*) A3,B3,C3
      WRITE(6,*) A4,B4,C4
      RETURN
      END
C
      SUBROUTINE SUB2
      STOP 111
      END
