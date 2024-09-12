        REAL*4 A1(10),B1(10)/10*2.0/,C1(10)/10*0.3/
        REAL*8 A2(10),B2(10)/10*2.0/,C2(10)/10*0.3/
        COMPLEX*8 A3(10),B3(10)/10*(2.0,2.5)/,C3(10)/10*(1.0,0.5)/
        COMPLEX*16 A4(10),B4(10)/10*(32,0.8)/,C4(10)/10*(8,0.2)/
        INTEGER*4 M(10),S/2/
        A1=0
        DO 10 I=1,10
          C1(I)=2.0
          A3(I)=B3(I)/C3(I)
          M(I)=I
10      CONTINUE

        DO 20 I=1,10
          A4(I)=B4(I)/C4(I)
          M(I)=M(I)+I
20      CONTINUE

        DO 30 I=1,10,2
          A3(I)=B3(I)**S
30      CONTINUE

        DO 40 I=1,10,2
          A4(I)=B3(I)**S
40      CONTINUE

        DO 50 I=1,10,2
          A4(I)=B3(I)**M(I)
50      CONTINUE

        DO 60 I=1,10,2
          A1(I)=B1(I)**M(I)
60      CONTINUE

        DO 70 I=1,6,2
          A1(I)=B1(I)**B1(I)
70      CONTINUE

          WRITE(6,*) A1,A3,A4,M
          STOP
          END
