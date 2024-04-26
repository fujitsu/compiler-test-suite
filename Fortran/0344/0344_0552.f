      PROGRAM MAIN
      REAL*8 Q(10),R(10),VX(10,10),VY(10,10)
      REAL*4 VV(10,10,10)
      DATA Q/12.3,45.6,78.9,1.2,34.5,67.8,91.2,11.3,55.4,78.1/
      DATA R/1.3,5.6,8.9,1.2,4.5,6.8,1.2,1.3,5.4,8.1/,VV/1000*1/
      DATA VX/50*0.43,50*0.34/,VY/50*4.3,50*3.9/,S/9.9/,N/10/,M/10/
C
      DO 10 I=1,N
         Q(I) = (Q(I) - R(I)) * 2.0
         VX(I,1) = (Q(I) - R(I)) * S
         DO 20 J=1,M
            VX(I,J) = VY(I,J) * VX(I,J)
   20    CONTINUE
         R(I) = VX(I,M) - R(I)
   10 CONTINUE
C
      DO 30 I=1,10
         S = Q(I) + R(I)
         DO 40 J=1,9
            T = -VX(I,J)
            DO 50 K=2,10
               VV(I,J,K) = T / S - VV(I,J+1,K-1) + R(I)
   50       CONTINUE
   40    CONTINUE
   30 CONTINUE
C
      WRITE(6,100) VV
  100 FORMAT(1H ,5E15.6)
      STOP
      END
