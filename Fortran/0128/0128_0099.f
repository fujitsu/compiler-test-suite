      REAL P, Q
      PARAMETER (N=24)
      PARAMETER (ANS1=-1446.00000)
      PARAMETER (ANS2=75.0000000)
      PARAMETER (ERROR=0.000001)
      REAL A(1:N), B(1:N)

      Q = 0.0
      DO 10 I=1,N
         Q=Q+N/I
         P=Q-I/2.0
         Q=P-I/0.2
         A(I)=Q-I/4.0
         B(I)=Q-I/2.0
 10      CONTINUE
      CLOSE(10)

      IF ((P-ANS1)<ERROR) THEN
         PRINT *,"OK"
      ELSE
         PRINT *,"NG : ",P
      ENDIF

      P=0.0
      DO 20 I=1,N
         P=P+(A(I)-B(I))
 20      CONTINUE
      CLOSE(20)

      IF ((P-ANS2)<ERROR) THEN
         PRINT *,"OK"
      ELSE
         PRINT *,"NG : ",P
      ENDIF

      END
