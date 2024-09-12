        REAL*4 A1(10),B1(10)/10*2.0/,C1(10)/10*0.3/
        REAL*8 A2(10),B2(10)/10*2.0/,C2(10)/10*0.3/
        COMPLEX*8 A3(10),B3(10)/10*(2.0,2.5)/
        COMPLEX*16 A4(10),B4(10)/10*(32,0.8)/
        INTEGER*4 M(10),S/2/
        DO 10 I=1,10
          C1(I)=2.0
          A1(I)=SQRT(B1(I))
          M(I)=I
10      CONTINUE

        DO 20 I=1,10
          A2(I)=DSQRT(B2(I))
          M(I)=M(I)+I
20      CONTINUE

        DO 30 I=1,10
          A3(I)=CSQRT(B3(I))
          M(I)=M(I)+I
30      CONTINUE

        DO 40 I=1,10
          A4(I)=CDSQRT(B4(I))
          M(I)=M(I)+I
40      CONTINUE
        DO 110 I=1,10
          IF(I.GT.5) THEN
          C1(I)=2.0
          A1(I)=SQRT(B1(I))+C1(I)
          M(I)=I
          ENDIF
110      CONTINUE

        DO 120 I=1,10
          IF(A1(I).GT.5.0) THEN
          A2(I)=DSQRT(B2(I))+2.0
          M(I)=M(I)+I
          ENDIF
120      CONTINUE

        DO 130 I=1,10
          IF(B2(I).LT.5.0) THEN
          A3(I)=CSQRT(B3(I))
          M(I)=M(I)+I
          ENDIF
130      CONTINUE

        DO 140 I=1,10
          IF(I.GT.2) THEN
          A4(I)=CDSQRT(B4(I))
          M(I)=M(I)+I
          ENDIF
140      CONTINUE

          WRITE(6,*) A1,A2,A3,A4,M
          STOP
          END
