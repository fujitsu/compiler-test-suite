      REAL*4 A(100),B(100),C(100)
      DATA A/100*0.0/,B/100*1.0/,C/100*2.0/,N/100/,M/0/,L/0/
      DO 10 I=1,N
         A(I) = B(I) + C(I)
         M = M + 1
         IF(M.GT.50) THEN
            B(M) = C(M) + A(M)
         ELSE
            L = L + 1
            C(L) = A(L) + B(L)
         ENDIF
   10 CONTINUE
      WRITE(6,100) (A(I),B(I),C(I),I=1,N)
  100 FORMAT(3F5.1)
      STOP
      END
