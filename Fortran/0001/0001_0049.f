      INTEGER A(1000),B(1000),C(100),D(100),CODE
      DATA A/1000*1/,B/1000*1/,C/100*1/,D/100*1/
C
      CODE = 0
      DO 10 I=1,100
         J=I
         CALL SUB1(A+B,C(1:I)+D(1:I),CODE,J)
   10 CONTINUE
C
      IF(CODE.EQ.0) WRITE(6,*) 'OK'
C
      STOP
      END
C
C
      SUBROUTINE SUB1(A,B,CODE,K)
      INTEGER A(1000),B(100),CODE
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
      DO 30 I=1,K
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
