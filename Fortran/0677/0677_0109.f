      REAL A1(10)/10*1./,A2(10)/10*1./,A3(10)/10*1./
      REAL B1(10)/10*1./,B2(10)/10*1./,B3(10)/10*1./
      REAL C1(10)/10*1./,C2(10)/10*1./,C3(10)/10*1./
      REAL*8 D1(10)/10*1./,D2(10)/10*1./,D3(10)/10*1./
      REAL E1(10)/10*1./,E2(10)/10*1./,E3(10)/10*1./
       DO 20 J=1,10
        B1(J)=B2(J)+B3(J)
        DO 10 K=1,10
         C1(K)=C1(K)+C2(K)*C3(K)
10      CONTINUE
        D1(J)=D2(J)-D3(J)
20     CONTINUE
      WRITE(6,*) A1(1),B1(1),C1(1),D1(1),E1(1)
      END