      REAL*4 A1(91),A2(91),A3(91),A4(91),A5(91),A6(91),A7(91),A8(91)
     1,C(91),B1(91),B2(91),B3(91),B4(91),B5(91),B6(91),B7(91),B8(91)
     2,D(91)
      DATA D/91*16./
      DO 91 I=1,91
      A1(I)=I
      A2(I)=I
      A3(I)=I
      A4(I)=I
      A5(I)=I
      A6(I)=I
      A7(I)=I
      A8(I)=I
      B1(I)=I
      B2(I)=I
      B3(I)=I
      B4(I)=I
      B5(I)=I
      B6(I)=I
      B7(I)=I
      B8(I)=I
 91   D(I)=D(I)*I
      DO 20 I=1,91
 20   C(I)=A1(I)+A2(I)+A3(I)+A4(I)+A5(I)+A6(I)+A7(I)+A8(I)+
     2     B1(I)+B2(I)+B3(I)+B4(I)+B5(I)+B6(I)+B7(I)+B8(I)
      K=0
      DO 30 J=1,91
      IF( D(J) .NE. C(J) ) THEN
         K=J
         GO TO 33
        ELSE
      ENDIF
 30   CONTINUE
      PRINT *, 'OK'
      GO TO 37
 33   PRINT *, 'NG','   NO.--',K
      PRINT *,C
      PRINT *,D
 37   STOP
      END
