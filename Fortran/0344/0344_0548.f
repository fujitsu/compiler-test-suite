      PROGRAM MAIN
      REAL*4  Q(10),X(10),Y(10),R(10),Z(10),VAS(10),T1(10)
      REAL*4  P(10,10),A(10,10)
      DATA P/100*0.1/,A/100*0.5/,S1/2.7/,S2/3.5/,S3/4.3/
      DATA X/0.2,0.4,0.6,0.8,1.0,0.1,0.3,0.5,0.7,0.9/
      DATA Y/0.2,0.4,0.6,0.8,1.0,0.1,0.3,0.5,0.7,0.9/
      DATA Z/0.2,0.4,0.6,0.8,1.0,0.1,0.3,0.5,0.7,0.9/
      DATA VAS/4*1.2,4*1.4,2*1.6/,N/10/,L/10/
C
      T1 =  (/(i,i=1,10)/)
      DO 10 J=1,N
         Q(J) = (X(J) - Y(J)) / S1
         R(J) = (Z(J) - Q(J)) * VAS(J)
         T1(J) = Q(J) * S2
         DO 20 K=1,N
            P(K,J) = P(K,J) + T1(J)
   20    CONTINUE
         DO 30 I=1,L
            A(I,J) = A(I,J) * T1(I) - S3
   30    CONTINUE
   10 CONTINUE
C
      WRITE(6,100) R,P,A
  100 FORMAT(1H ,10F7.3)
      STOP
      END
