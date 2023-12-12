      INTEGER A(10),B(10),C(10),D(10),CODE
      DATA A/10*1/,B/10*1/,C/10*1/,D/10*1/
C
      CODE = 0
      A = A + 1
      DO 10 I=1,2
         CALL SUB1(A+B,C+D,CODE)
   10 CONTINUE
C
      DO 20 I=1,10
         IF(A(I).NE.2) THEN
            IF(.NOT.BTEST(CODE,0)) THEN
               WRITE(6,*) 'NG'
               WRITE(6,*) 'ELEMENT NUMBER = A(',I,')',A(I)
               CODE=IBSET(CODE,0)
            ENDIF
            GO TO 30
         ENDIF
   20 CONTINUE
C
      IF(CODE.EQ.0) WRITE(6,*) 'OK'
C
   30 CONTINUE
      STOP
      END
C
C
      SUBROUTINE SUB1(B,C,CODE)
      INTEGER B(10),C(10),CODE
C
      DO 10 I=1,10
         IF(B(I).NE.3) THEN
            IF(.NOT.BTEST(CODE,1)) THEN
               WRITE(6,*) 'NG'
               WRITE(6,*) 'ELEMENT NUMBER = B(',I,')',B(I)
               CODE=IBSET(CODE,1)
            ENDIF
            GO TO 20
         ENDIF
   10 CONTINUE
C
   20 CONTINUE
      DO 30 I=1,10
         IF(C(I).NE.2) THEN
            IF(.NOT.BTEST(CODE,2)) THEN
               WRITE(6,*) 'NG'
               WRITE(6,*) 'ELEMENT NUMBER = C(',I,')',C(I)
               CODE=IBSET(CODE,2)
            ENDIF
            GO TO 40
         ENDIF
   30 CONTINUE
C
   40 CONTINUE
      RETURN
      END
