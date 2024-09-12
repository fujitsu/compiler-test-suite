      REAL*8 A1(10),A2(10),A3(10),A4(10),S2,C(10)

      S2=1.
      DO 10 I=1,10
10        C(I)=2.0
      DO 20 I=1,10
          A1(I)=S2+C(I)
          A2(I)=S2-C(I)
          A3(I)=S2*C(I)
20        A4(I)=S2/C(I)
      WRITE(6,*)A1,A2,A3,A4,S2,C
      END
