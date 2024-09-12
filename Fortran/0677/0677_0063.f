        REAL*4 A1(10),B1(10)/10*2.0/,C1(10)/10*0.3/
        REAL*4 A11(10),B11(10)/10*2.0/,C11(10)/10*0.3/
        REAL*8 A2(10),B2(10)/10*2.0/,C2(10)/10*0.3/
        REAL*8 A22(10),B22(10)/10*2.0/,C22(10)/10*0.3/
        COMPLEX*8 A3(10),B3(10)/10*(2.0,2.5)/
        COMPLEX*16 A4(10),B4(10)/10*(32,0.8)/
        INTEGER*4 M(10),S/2/
        DO 10 I=1,10
          C1(I)=2.0
          A1(I)=SIN(B1(I))
          M(I)=I
10      CONTINUE

        DO 20 I=1,10
          A2(I)=DSIN(B2(I))
          M(I)=M(I)+I
20      CONTINUE

        DO 30 I=1,10
          C11(I)=2.0
          A11(I)=COS(B11(I))
          M(I)=I+M(I)
30      CONTINUE

        DO 40 I=1,10
          A22(I)=DCOS(B22(I))
          M(I)=M(I)+I
40      CONTINUE


          WRITE(6,*) A1,A2,A11,A22,C1,M,C11
          STOP
          END
