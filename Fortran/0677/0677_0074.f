      INTEGER*4  A1(32)/32*0/,B1(32)/32*10/
      REAL*4     A2(32)/32*0.0/,B2(32)/32*10/
      REAL*8     A3(32)/32*0.0/,B3(32)/32*10/
      COMPLEX*8  A4(32)/32*(1,1)/,B4(32)/32*(10,2)/
      COMPLEX*16 A5(32)/32*(1,1)/,B5(32)/32*(10,1)/
      LOGICAL*4  A6(32)/32*.FALSE./,B6(32)/32*.FALSE./
      LOGICAL*1  A7(32)/32*.FALSE./,B7(32)/32*.FALSE./
      N=10
      DO 10 I=1,32
      IF(I.GT.5) THEN
      IF(N.GT.5.OR.B6(I).OR..NOT.B7(I)) THEN
      A1(I)=B1(I)
      A6(I)=A1(I).GT.5
      A7(I)=A1(I).LE.6
      IF(I.GT.7) THEN
      A1(I)=B1(I)*5
      ELSE
      A1(I)=B1(I)*3
      ENDIF
      ELSE
      A6(I)=A1(I).GT.10
      A7(I)=A1(I).LE.20
      A1(I)=B1(I)*9
      ENDIF
      ENDIF
10    CONTINUE
      DO 20 I=1,32
      IF(I.GT.5) THEN
      IF(N.GT.5) THEN
      A2(I)=B2(I)
      IF(I.GT.7) THEN
      A2(I)=B2(I)*5
      ELSE
      A2(I)=B2(I)*3
      ENDIF
      ELSE
      A2(I)=B2(I)*9
      ENDIF
      ENDIF
20    CONTINUE
      DO 30 I=1,32
      IF(I.GT.5) THEN
      IF(N.GT.5) THEN
      A3(I)=B3(I)
      IF(I.GT.7) THEN
      A3(I)=B3(I)*5
      ELSE
      A3(I)=B3(I)*3
      ENDIF
      ELSE
      A3(I)=B3(I)*9
      ENDIF
      ENDIF
30    CONTINUE
      DO 40 I=1,32
      IF(I.GT.5) THEN
      IF(N.GT.5) THEN
      A4(I)=B4(I)
      IF(I.GT.7) THEN
      A4(I)=B4(I)*5
      ELSE
      A4(I)=B4(I)*3
      ENDIF
      ELSE
      A4(I)=B4(I)*9
      ENDIF
      ENDIF
40    CONTINUE
      DO 50 I=1,32
      IF(I.GT.5) THEN
      IF(N.GT.5) THEN
      A5(I)=B5(I)
      IF(I.GT.7) THEN
      A5(I)=B5(I)*5
      ELSE
      A5(I)=B5(I)*3
      ENDIF
      ELSE
      A5(I)=B5(I)*9
      ENDIF
      ENDIF
50    CONTINUE
      WRITE(6,*) A1,A2,A3,A4,A5,A5,A7,B1,B2,B3,B4,B5,B6,B7
      STOP
      END
