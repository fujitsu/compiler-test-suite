      INTEGER A(100),B(100),C(500),D(500),CODE
      INTEGER E(100),F(100),G(1000),H(1000)
      DATA A/100*1/,B/100*1/,C/500*1/,D/500*1/
      DATA E/100*1/,F/100*1/,G/1000*1/,H/1000*1/
C
      CODE = 0
      DO 10 I=1,100
         CALL SUB1(A+B,C+D,CODE)
         CALL SUB2(E+F,G+H,CODE)
   10 CONTINUE
C
      IF(CODE.EQ.0) WRITE(6,*) 'OK'
C
      STOP
      END
C
C
      SUBROUTINE SUB1(A,B,CODE)
      INTEGER A(100),B(500),CODE
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
      RETURN
      END
C
C
      SUBROUTINE SUB2(C,D,CODE)
      INTEGER C(100),D(1000),CODE
C
      DO 10 I=1,100
         IF(C(I).NE.2) THEN
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
      DO 30 I=1,1000
         IF(D(I).NE.2) THEN
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
