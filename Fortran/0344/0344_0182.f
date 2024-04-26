      REAL A(10),B(10),C(10)
      DATA A/1.,2.,3.,4.,5.,6.,7.,8.,9.,0./
      DATA B,C/10*1.,10*2./
      DATA N,M,NN/1,10,1/

      DO 10 I=N,M,NN
        A(I)=B(I)+COS(A(I)-1)
        A(I)=A(I)*C(I)+1
10    CONTINUE

      DO 20 I=1,10
        DO 21 J=1,M,1
          B(J)=B(J)+I
21      CONTINUE
20    CONTINUE

      DO 30 I=1,M,1
        DO 31 II=M,1,-1
          DO 32 J=1,10,1
             IF(A(I).NE.0) THEN
               C(J)=C(J)+I+II
             ELSE
              GOTO 32
             ENDIF
             C(J)=A(J)+B(J)
32         CONTINUE
31      CONTINUE
30    CONTINUE

      WRITE(6,1) A,B,C
 1    FORMAT(5F10.5)
      STOP
      END
