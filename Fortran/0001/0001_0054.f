      INTEGER A(100),B(100),C(10),D(10),E(500),CODE
      DATA A/100*1/,B/100*1/,C/10*1/,D/10*1/,E/500*1/
C
      CODE = 0
      DO 10 I=1,10
         J=I
         CALL SUB1(A+B,C(1:I)+D(1:I),CODE,J)
         E = E + 1
   10 CONTINUE
C
      DO 20 I=1,500
         IF(E(I).NE.11) THEN
            IF(.NOT.BTEST(CODE,0)) THEN
               WRITE(6,*) 'NG'
               WRITE(6,*) 'ELEMENT NUMBER = E(',I,')'
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
      SUBROUTINE SUB1(A,B,CODE,K)
      INTEGER A(100),B(K),CODE
C
      DO 10 I=1,100
         IF(A(I).NE.2) THEN
            IF(.NOT.BTEST(CODE,1)) THEN
               WRITE(6,*) 'NG'
               WRITE(6,*) 'ELEMENT NUMBER = A(',I,')'
               CODE=IBSET(CODE,1)
            ENDIF
            GO TO 20
         ENDIF
   10 CONTINUE
C
   20 CONTINUE
      DO 30 I=1,K
         IF(B(I).NE.2) THEN
            IF(.NOT.BTEST(CODE,2)) THEN
               WRITE(6,*) 'NG'
               WRITE(6,*) 'ELEMENT NUMBER = B(',I,')'
               CODE=IBSET(CODE,2)
            ENDIF
            GO TO 40
         ENDIF
   30 CONTINUE
C
   40 CONTINUE
      RETURN
      END
