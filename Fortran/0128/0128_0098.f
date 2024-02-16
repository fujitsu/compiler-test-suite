      REAL P, Q
      PARAMETER (N=24)
      PARAMETER (ANS=-31841.0000)
      PARAMETER (ERROR=0.000001)
      REAL A(1:N), B(1:N), C(1:N)

      Q = 0.0
      DO 10 I=1,N
         Q=Q+N/I
         A(I)=Q-I/2.0
         Q=I*I
         B(I)=Q-I/4.0
         Q=A(I)-B(I)
         C(I)=Q-I
 10      CONTINUE
      CLOSE(10)

      P=0.0
      DO 20 I=1,N
         P=P+C(I)
 20      CONTINUE
      CLOSE(20)

      IF ((P-ANS)<ERROR) THEN
        PRINT *,"OK"
      ELSE
        PRINT *,"NG : ",P
      ENDIF
      END
