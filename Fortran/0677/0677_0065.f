        REAL*4 A1(10),B1(10)/10*2.0/,C1(10)/10*0.3/
        REAL*8 A2(10),B2(10)/10*2.0/,C2(10)/10*0.3/
        COMPLEX*8 A3(10),B3(10)/10*(2.0,2.5)/
        COMPLEX*16 A4(10),B4(10)/10*(32,0.8)/
        INTEGER*4 M(10),S/2/
        DO 10 I=1,10
          C1(I)=2.0
          A3(I)=CABS(B3(I))
          M(I)=I
10      CONTINUE

        DO 20 I=1,10
          A4(I)=CDABS(B4(I))
          M(I)=M(I)+I
20      CONTINUE

          WRITE(6,*) A3,A4,M
          STOP
          END