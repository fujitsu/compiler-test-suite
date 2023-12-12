      INTEGER A(100),B(100),C(500),D(500),E(10),F(10),CODE
      INTEGER G(100),H(100),I(1000),J(1000)
      DATA A/100*1/,B/100*1/,C/500*1/,D/500*1/,E/10*1/,F/10*1/
      DATA G/100*1/,H/100*1/,I/1000*1/,J/1000*1/
C
      CODE = 0
      DO 10 K=1,10
         L=K
         CALL SUB1(A+B,C+D,E(1:K)+F(1:K),CODE,L)
         CALL SUB2(G+H,I+J,CODE)
   10 CONTINUE
C
      IF(CODE.EQ.0) WRITE(6,*) 'OK'
C
      STOP
      END
C
C
      SUBROUTINE SUB1(A,B,C,CODE,M)
      INTEGER A(100),B(500),C(M),CODE
C
      DO 10 I=1,100
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
      DO 30 I=1,500
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
      DO 50 I=1,M
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
      SUBROUTINE SUB2(D,E,CODE)
      INTEGER D(100),E(1000),CODE
C
      DO 10 I=1,100
         IF(D(I).NE.2) THEN
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
      DO 30 I=1,1000
         IF(E(I).NE.2) THEN
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
      RETURN
      END
