        REAL*4 A(10),B(10)/10*2.0/,C(10)/10*0.3/
        INTEGER*4 M(10),S/2/
        DO 10 I=1,10
          A(I)=SIN(B(I))
          M(I)=I
10      CONTINUE

        DO 20 I=1,10
          B(I)=B(I)**S
          A(I)=B(I)**M(I)
20      CONTINUE

          WRITE(6,*) A,B,M,S
          STOP
          END
