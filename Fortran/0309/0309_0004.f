      PARAMETER(ANS=21)
      I=1
      J=0
      K=0
      I1=1
      J1=0
      PRINT *,'START'
      DO 100 K=1,IFUN(1)
         DO 1000 K1=1,IFUN(1)
            L1=IFUN(1)
            IF (L1.EQ.0) GOTO 11
 10         I1=I1+1
 11         L1=L1+10
            IF (I1 < 100.AND.J1.EQ.0) THEN
               I1=I1+1
               J1=1
               L1=L1+1
               GOTO 10
            ELSE 
               I1=I1+1
               J1=0
               L1=L1+1
               IF (L1 > 100) GOTO 999
               GOTO 10
            ENDIF
 999        IF (I1.EQ.ANS) THEN
               PRINT *,' TEST 1 OK'
            ELSE
               PRINT *,' TEST 1 NG'
            ENDIF
 1000       CONTINUE
         L=IFUN(1)
         IF (L.EQ.0) GOTO 1101
 1001    I=I+1
 1101    L=L+10
         IF (I < 100.AND.J.EQ.0) THEN
            I=I+1
            J=1
            L=L+1
            GOTO 1001
         ELSE 
            I=I+1
            J=0
            L=L+1
            IF (L > 100) GOTO 9999
            GOTO 1001
         ENDIF
 9999    IF (I.EQ.ANS) THEN
            PRINT *,' TEST 2 OK'
         ELSE
            PRINT *,' TEST 2 NG'
         ENDIF
 100  CONTINUE 
      I=1
      J=0
      DO 200 K=1,IFUN(1)
      L=IFUN(1)
      IF (L.EQ.0) GOTO 21
 20   I=I+1
 21   L=L+10
      IF (I < 100.AND.J.EQ.0) THEN
         I=I+1
         J=1
         L=L+1
         GOTO 20
      ELSE 
         I=I+1
         J=0
         L=L+1
         IF (L > 100) GOTO 888
         GOTO 20
      ENDIF
 888  IF (I.EQ.ANS) THEN
         PRINT *,' TEST 3 OK'
      ELSE
         PRINT *,' TEST 3 NG I=' , I
      ENDIF
 200  CONTINUE 
      PRINT *,'END'
      END
      INTEGER FUNCTION IFUN(II)
      IFUN=II
      END
