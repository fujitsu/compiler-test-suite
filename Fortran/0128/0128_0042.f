      INTEGER N
      REAL  Q,S,ANS1,ANS2
      PARAMETER (N=50)
      PARAMETER (ANS1=48.0)
      PARAMETER (ANS2=-3163.0)
      PARAMETER (ERROR=0.000001)
      REAL  A(1:N)
      REAL  B(1:N)

      DO 10 I=1,N
         A(I)=I - (I/3)*3
         B(I)=I - (I/3)*5
 10      CONTINUE
      
      CLOSE(10)

      S = 0.0;
      DO 20 I=1,N
         Q = A(I) + B(I);
         S = S + Q;
         Q = N - A(I);
         S = S - Q;
 20      CONTINUE

      CLOSE(20)

      IF ((Q - ANS1) < ERROR) THEN
         WRITE(6,*) 'OK'
      ELSE
         WRITE(6,*) 'NG : Q = ',Q,', ANS = ',ANS1
      END IF
      IF ((S - ANS2) < ERROR) THEN
         WRITE(6,*) 'OK'
      ELSE
         WRITE(6,*) 'NG : S = ',S,', ANS = ',ANS2
      END IF
      
      END




