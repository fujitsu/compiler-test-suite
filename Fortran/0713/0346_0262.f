      REAL*4 A1(91),A2(91),A3(91),A4(91),A5(91),A6(91),A7(91),A8(91)
     1,C(91),B1(91),B2(91),B3(91),B4(91),B5(91),B6(91),B7(91),B8(91)
     2,D(91)
      DATA D/91*16./
      DO 91 I=1,91,2
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
      DO 191 I=2,91,2
      A1(I)=I+I
      A2(I)=I+I
      A3(I)=I+I
      A4(I)=I+I
      A5(I)=I+I
      A6(I)=I+I
      A7(I)=I+I
      A8(I)=I+I
      B1(I)=I+I
      B2(I)=I+I
      B3(I)=I+I
      B4(I)=I+I
      B5(I)=I+I
      B6(I)=I+I
      B7(I)=I+I
      B8(I)=I+I
 191  D(I)=D(I)*(I+I)
      DO 20 I=1,91
 20   C(I)=A1(I)+A2(I)+A3(I)+A4(I)+A5(I)+A6(I)+A7(I)+A8(I)+
     2     B1(I)+B2(I)+B3(I)+B4(I)+B5(I)+B6(I)+B7(I)+B8(I)
      K=0
      DO 30 J=1,91
        IF( D(J) .NE. C(J) ) K=J
 30   CONTINUE
      IF(  K .EQ. 0 )
     1   THEN
           PRINT *, 'OK'
         ELSE
           PRINT *, 'NG'
           PRINT *, '======== RESULT OF C(1),.....,C(91)======'
           PRINT *,C
           PRINT *, '======== RESULT OF D(1),.....,D(91)======'
           PRINT *,D
      ENDIF
 37   STOP
      END
