      REAL*4 A1(91),A2(91),A3(91),A4(91),A5(91),A6(91),A7(91),A8(91)
     1,C(91),B1(91),B2(91),B3(91),B4(91),B5(91),B6(91),B7(91),B8(91)
     2,D(91)
      DATA D/91*16./
      REAL*8 E
      DO 911 I=2,91,2
      E    =0
      A1(I)=-E
      A2(I)=-E
      A3(I)=-E
      A4(I)=-E
      A5(I)=-E
      A6(I)=-E
      A7(I)=-E
      A8(I)=-E
      B1(I)=-E
      B2(I)=-E
      B3(I)=-E
      B4(I)=-E
      B5(I)=-E
      B6(I)=-E
      B7(I)=-E
      B8(I)=-E
 911  CONTINUE
      DO 91 I=1,91,2
      E    =I
      A1(I)=-E
      A2(I)=-E
      A3(I)=-E
      A4(I)=-E
      A5(I)=-E
      A6(I)=-E
      A7(I)=-E
      A8(I)=-E
      B1(I)=-E
      B2(I)=-E
      B3(I)=-E
      B4(I)=-E
      B5(I)=-E
      B6(I)=-E
      B7(I)=-E
      B8(I)=-E
 91   D(I)=D(I)*I
      DO 191 I=2,91,2
      A1(I)=A1(I-1)+A1(I)
      A2(I)=A2(I-1)+A2(I)
      A3(I)=A3(I-1)+A3(I)
      A4(I)=A4(I-1)+A4(I)
      A5(I)=A5(I-1)+A5(I)
      A6(I)=A6(I-1)+A6(I)
      A7(I)=A7(I-1)+A7(I)
      A8(I)=A8(I-1)+A8(I)
      B1(I)=B1(I-1)+B1(I)
      B2(I)=B2(I-1)+B2(I)
      B3(I)=B3(I-1)+B3(I)
      B4(I)=B4(I-1)+B4(I)
      B5(I)=B5(I-1)+B5(I)
      B6(I)=B6(I-1)+B6(I)
      B7(I)=B7(I-1)+B7(I)
      B8(I)=B8(I-1)+B8(I)
 191  D(I)=D(I)*(I-1)
      DO 20 I=1,91
 20   C(I)=-( A1(I)+A2(I)+A3(I)+A4(I)+A5(I)+A6(I)+A7(I)+A8(I)+
     2        B1(I)+B2(I)+B3(I)+B4(I)+B5(I)+B6(I)+B7(I)+B8(I))
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
