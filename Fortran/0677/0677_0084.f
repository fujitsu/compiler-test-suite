      REAL*8 A1(10),A2(10),A3(10),A4(10),S2,C(10)
      DATA S2/1./,C/10*2./,N/10/

      DO 10 I=1,N
          A1(I)=S2+C(I)
          A2(I)=S2-C(I)
          A3(I)=S2*C(I)
10        A4(I)=S2/C(I)
      WRITE(6,*)A1,A2,A3,A4,S2,C
      END
