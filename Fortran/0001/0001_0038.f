      INTEGER A(1000),B(1000),C(1000),D(1000),CODE
      REAL*8  E(100),F(100),G(100),H(100)
      REAL*4  I(100),J(100),K(100),L(100)
      DATA A/1000*1/,B/1000*1/,C/1000*1/,D/1000*1/
      DATA E/100*1.0/,F/100*1.0/,G/100*1.0/,H/100*1.0/
      DATA I/100*1.0/,J/100*1.0/,K/100*1.0/,L/100*1.0/
C
      CODE = 0
      DO 10 II=1,10
         CALL SUB1(A+B,C+D,CODE)
         DO 20 JJ=1,100
            CALL SUB2(E+F,G+H,CODE)
   20    CONTINUE
         CALL SUB3(I+J,K+L,CODE)
   10 CONTINUE
C
      IF(CODE.EQ.0) WRITE(6,*) 'OK'
C
      STOP
      END
C
C
      SUBROUTINE SUB1(A,B,CODE)
      INTEGER A(1000),B(1000),CODE
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
 10   CONTINUE
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
      RETURN
      END
C
C
      SUBROUTINE SUB2(C,D,CODE)
      INTEGER CODE
      REAL*8 C(100),D(100)
C
      DO 10 I=1,100
         IF(C(I).NE.2.0) THEN
            IF(.NOT.BTEST(CODE,2)) THEN
               WRITE(6,*) 'NG'
               WRITE(6,*) 'ELEMENT NUMBER = C(',I,')'
               CODE=IBSET(CODE,2)
            ENDIF
            GO TO 20
         ENDIF
   10 CONTINUE
C
   20 CONTINUE
      DO 30 I=1,100
         IF(D(I).NE.2.0) THEN
            IF(.NOT.BTEST(CODE,3)) THEN
               WRITE(6,*) 'NG'
               WRITE(6,*) 'ELEMENT NUMBER = D(',I,')'
               CODE=IBSET(CODE,3)
            ENDIF
            GO TO 40
         ENDIF
   30 CONTINUE
C
   40 CONTINUE
      RETURN
      END
C
C
      SUBROUTINE SUB3(E,F,CODE)
      REAL*4  E(100),F(100)
      INTEGER CODE
C
      DO 10 I=1,100
         IF(E(I).NE.2.0) THEN
            IF(.NOT.BTEST(CODE,4)) THEN
               WRITE(6,*) 'NG'
               WRITE(6,*) 'ELEMENT NUMBER = E(',I,')'
               CODE=IBSET(CODE,4)
            ENDIF
            GO TO 20
         ENDIF
   10 CONTINUE
C
   20 CONTINUE
      DO 30 I=1,100
         IF(F(I).NE.2.0) THEN
            IF(.NOT.BTEST(CODE,5)) THEN
               WRITE(6,*) 'NG'
               WRITE(6,*) 'ELEMENT NUMBER = F(',I,')'
               CODE=IBSET(CODE,5)
            ENDIF
            GO TO 40
         ENDIF
   30 CONTINUE
C
   40 CONTINUE
      RETURN
      END
