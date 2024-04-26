      PROGRAM MAIN
      PARAMETER(N=10)
      DIMENSION UP(N,N),VX(N,N),VY(N,N)
      DIMENSION W(10,10,10),Q(10,10),TC(10,10)
      DIMENSION GRD(10,10),SRD(10,10),ERT(10,10)
      DATA VX/100*0.12/,PH1/3.45/,VY/100*6.78/,DELTA/9.01/
      DATA W/1000*2.34/,Q/100*5.67/,TC/100*8.90/,GRD/100*1.23/
      DATA SRD/100*4.56/,ERT/100*7.89/
C
      DO 30 I=1,N
         DO 30 J=1,N
            UP(I,J) = VX(I,J) * PH1 - VY(I,J) / DELTA
               IF(UP(I,J).GT.1.0E-12) THEN
                  UP(I,J) = 0.0
               ENDIF
   30 CONTINUE
C
      DO 20 I=1,10
         DO 20 J=1,5
            DO 20 K=1,10
               ERT(I,K) = W(J,I,K) - Q(I,K) * TC(I,K)
               W(J,I,K) = SQRT(GRD(I,K)**2 + SRD(I,K)**2) / ERT(I,K)
   20 CONTINUE
      WRITE(6,100) UP,W
  100 FORMAT(1H ,5F15.3)
      STOP
      END
