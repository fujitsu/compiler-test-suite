       REAL*8 AADMY(100),A(100,2),B(100,2),Z(100,2)
       DATA AADMY/100*0.0D0/
       DATA A,B/200*1.0D0,200*2.0D0/,Z/200*3.0D0/

       CALL SUB(AADMY,A,B,Z,100,2)
       STOP
       END
      
       SUBROUTINE SUB(AADMY,AZX,BZX,Z,N,M)
       REAL*8 AADMY(N)
       REAL*8 AZX(N,M),BZX(N,M),Z(N,M)
       REAL*8 MAX,MIN
       AADMY(N)=1.0

       IX = 1
       DO 10 K=1,M
         DO 10 I=1,N,2
           AZX(I,K) = I
           BZX(I,K) = -I
  10   CONTINUE

       DO 111 K=1,M
         IF(IX.EQ.1) THEN
           AZX(100,K) = 110.0D0
           AZX(11,K)= 0.0D0
         ENDIF
         MAX = 0.0D0
         IMAX = 0

         DO 20 I=1,N,2
           IF(AZX(I,K) .GT. MAX ) THEN
             MAX = AZX(I,K)
             IMAX = I
           ENDIF
  20     CONTINUE
         MIN = 10.0
         IMIN = 0

         DO 30 I=1,N,2
           IF(AZX(I,K) .LT. MIN ) THEN
             MIN = AZX(I,K)
             IMIN = I
           ENDIF
  30     CONTINUE

         DO 40 I=IMIN,IMAX,2
           Z(I,K) = AZX(I,K) - BZX(I,M)
  40     CONTINUE

       AZX(IMAX-IX*10,K  ) = 210.0D0
       AZX(IMIN-IX+3,K  ) = 0.0D0
       AZX(IMIN,K  ) = 11.0D0
       IF( IX .EQ. 1) THEN
         IIMAX = IMAX
         IIMIN = IMIN
       ENDIF
       IX = IX + 1
 111   CONTINUE
       PRINT *,IIMAX,IIMIN,IMAX,IMIN,Z,AZX
       RETURN
       END
