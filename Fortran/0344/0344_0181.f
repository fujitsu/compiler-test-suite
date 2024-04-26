      REAL A(10),B(10),C(10)
      DATA N,M,NN,J/1,10,1,1/

      DO 99 I=1,10
       A(I)=J
       B(I)=A(I)-1
       C(I)=J*M
       J=J+1
99    CONTINUE

      DO 10 I=2,9
        A(I)=A(I-1)*A(I-1)
10    CONTINUE

      DO 20 J=1,M,1
        B(I)=B(I)+C(I)*N
20    CONTINUE
      DO 30 I=1,M,NN
        C(I)=A(I)*I
        IF (B(I).NE.C(I)) THEN
          C(I)=C(I)-1
        ENDIF
30    CONTINUE

      WRITE(6,1) A,B,C
 1    FORMAT(5F13.5)
      STOP
      END
