       REAL*8 AADMY(100),A(100,2),B(100,2),Z(100,2)
       DATA AADMY/100*0.0D0/
       DATA A,B/200*1.0D0,200*2.0D0/,Z/200*3.0D0/
       LOGICAL LT(100,2),LF(100,2)
       DATA LT,LF/200*.FALSE.,200*.TRUE./

       CALL SUB(AADMY,A,B,Z,LT,LF,100,2)
       STOP
       END
      
       SUBROUTINE SUB(AADMY,AZX,BZX,Z,LT,LF,N,M)
       REAL*8 AADMY(N)
       REAL*8 AZX(N,M),BZX(N,M),Z(N,M)
       REAL*8 MAX,MIN
       LOGICAL LT(N,M),LF(N,M)
       AADMY(N)=1.0

       IX = 1
       DO 10 K=1,M
         DO 10 I=1,N,2
           AZX(I,K) = I
           BZX(I,K) = -I
           LT(I,K) = .TRUE.
           LF(I,K) = .FALSE.
  10   CONTINUE

       DO 111 K=1,M
         IF(IX.EQ.1) THEN
           AZX(100,K) = 110.0D0
           AZX(11,K)= 0.0D0
         ENDIF
         MAX = 0.0D0
         IMAX = 0
         MIN = 10.0
         IMIN = 0

         DO 20 I=1,N,2
           IF(AZX(I,K) .GT. MAX ) THEN
             MAX = AZX(I,K)
             IMAX = I
           ENDIF
           IF(AZX(I,K) .LT. MIN ) THEN
             MIN = AZX(I,K)
             IMIN = I
           ENDIF
           IF(LT(I,K)) THEN
             BZX(I,K)=AZX(I,K)+1.0D0
           ENDIF
           IF(.NOT.LF(I,K)) THEN
             BZX(I,K)=AZX(I,K)-1.0D0
           ENDIF
  20     CONTINUE

         DO 40 I=1,IMIN,IMAX
           Z(I,K) = AZX(I,K) - BZX(I,K)
  40     CONTINUE

       AZX(IMAX-IX*10,K) = 210.0D0
       AZX(abs(IMIN-IX*10),K) = 0.0D0
       AZX(IMIN,K) = 11.0D0
       IF( IX .EQ. 1) THEN
         IIMAX = IMAX
         IIMIN = IMIN
       ENDIF
       IX = IX + 1
 111   CONTINUE
       PRINT *,IIMAX,IIMIN,IMAX,IMIN,Z,AZX
       RETURN
       END
