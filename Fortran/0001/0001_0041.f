      INTEGER A(1000),B(1000),C(1000),D(1000),E(1000),F(1000),CODE
      REAL*8  G(100),H(100),I(100),J(100),K(100),L(100)
      REAL*4  M(100),N(100),O(100),P(100),Q(100),R(100)
      DATA A/1000*1/,B/1000*1/,C/1000*1/,D/1000*1/,E/1000*1/,F/1000*1/
      DATA G/100*1.0/,H/100*1.0/,I/100*1.0/
      DATA J/100*1.0/,K/100*1.0/,L/100*1.0/
      DATA M/100*1.0/,N/100*1.0/,O/100*1.0/
      DATA P/100*1.0/,Q/100*1.0/,R/100*1.0/
C
      CODE = 0
      DO 10 II=1,100
         CALL SUB1(A+B,C+D,E+F,CODE)
         DO 20 JJ=1,100
            DO 30 KK=1,100
               CALL SUB2(G+H,I+J,K+L,CODE)
   30       CONTINUE
            CALL SUB3(M+N,O+P,Q+R,CODE)
   20    CONTINUE
   10 CONTINUE
C
      IF(CODE.EQ.0) WRITE(6,*) 'OK'
C
      STOP
      END
C
C
      SUBROUTINE SUB1(A,B,C,CODE)
      INTEGER A(1000),B(1000),C(1000),CODE
C
      DO 10 I=1,1000
         IF(A(I).NE.2) THEN
            IF(.NOT.BTEST(CODE,0)) THEN
               WRITE(6,*) 'NG'
               WRITE(6,*) 'ELEMENT NUMBER = A(',I,')'
               CODE=IBSET(CODE,0)
            ENDIF
            GO TO 20
         ENDIF
   10 CONTINUE
C
   20 CONTINUE
      DO 30 I=1,1000
         IF(B(I).NE.2) THEN
            IF(.NOT.BTEST(CODE,1)) THEN
               WRITE(6,*) 'NG'
               WRITE(6,*) 'ELEMENT NUMBER = B(',I,')'
               CODE=IBSET(CODE,1)
            ENDIF
            GO TO 40
         ENDIF
   30 CONTINUE
C
   40 CONTINUE
      DO 50 I=1,1000
         IF(C(I).NE.2) THEN
            IF(.NOT.BTEST(CODE,2)) THEN
               WRITE(6,*) 'NG'
               WRITE(6,*) 'ELEMENT NUMBER = C(',I,')'
               CODE=IBSET(CODE,2)
            ENDIF
            GO TO 60
         ENDIF
   50 CONTINUE
C
   60 CONTINUE
      RETURN
      END
C
C
      SUBROUTINE SUB2(D,E,F,CODE)
      INTEGER CODE
      REAL*8  D(100),E(100),F(100)
C
      DO 10 I=1,100
         IF(D(I).NE.2.0) THEN
            IF(.NOT.BTEST(CODE,3)) THEN
               WRITE(6,*) 'NG'
               WRITE(6,*) 'ELEMENT NUMBER = D(',I,')'
               CODE=IBSET(CODE,3)
            ENDIF
            GO TO 20
         ENDIF
   10 CONTINUE
C
   20 CONTINUE
      DO 30 I=1,100
         IF(E(I).NE.2.0) THEN
            IF(.NOT.BTEST(CODE,4)) THEN
               WRITE(6,*) 'NG'
               WRITE(6,*) 'ELEMENT NUMBER = E(',I,')'
               CODE=IBSET(CODE,4)
            ENDIF
            GO TO 40
         ENDIF
   30 CONTINUE
C
   40 CONTINUE
      DO 50 I=1,100
         IF(F(I).NE.2.0) THEN
            IF(.NOT.BTEST(CODE,5)) THEN
               WRITE(6,*) 'NG'
               WRITE(6,*) 'ELEMENT NUMBER = F(',I,')'
               CODE=IBSET(CODE,5)
            ENDIF
            GO TO 60
         ENDIF
   50 CONTINUE
C
   60 CONTINUE
      RETURN
      END
C
C
      SUBROUTINE SUB3(G,H,I,CODE)
      INTEGER CODE
      REAL*4  G(100),H(100),I(100)
C
      DO 10 K=1,100
         IF(G(K).NE.2.0) THEN
            IF(.NOT.BTEST(CODE,6)) THEN
               WRITE(6,*) 'NG'
               WRITE(6,*) 'ELEMENT NUMBER = G(',K,')'
               CODE=IBSET(CODE,6)
            ENDIF
            GO TO 20
         ENDIF
   10 CONTINUE
C
   20 CONTINUE
      DO 30 K=1,100
         IF(H(K).NE.2.0) THEN
            IF(.NOT.BTEST(CODE,7)) THEN
               WRITE(6,*) 'NG'
               WRITE(6,*) 'ELEMENT NUMBER = H(',K,')'
               CODE=IBSET(CODE,7)
            ENDIF
            GO TO 40
         ENDIF
   30 CONTINUE
C
   40 CONTINUE
      DO 50 K=1,100
         IF(I(K).NE.2.0) THEN
            IF(.NOT.BTEST(CODE,8)) THEN
               WRITE(6,*) 'NG'
               WRITE(6,*) 'ELEMENT NUMBER = I(',K,')'
               CODE=IBSET(CODE,8)
            ENDIF
            GO TO 60
         ENDIF
   50 CONTINUE
C
   60 CONTINUE
      RETURN
      END
