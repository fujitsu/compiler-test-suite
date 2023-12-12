      INTEGER A(1000),B(1000),C(1000),D(1000),E(1000),F(1000),CODE
      DATA A/1000*1/,B/1000*1/,C/1000*1/,D/1000*1/,E/1000*1/,F/1000*1/
C
      CODE = 0
      DO 10 I=1,5
         DO 20 J=1,5
            DO 30 K=1,100
               CALL SUB1(A+B,C+D,E+F,CODE)
   30       CONTINUE
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
