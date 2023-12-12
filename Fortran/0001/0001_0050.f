      INTEGER A(1000),B(1000),C(500),D(500),E(100),F(100),CODE
      DATA A/1000*1/,B/1000*1/,C/500*1/
      DATA D/500*1/,E/100*1/,F/100*1/
C
      CODE = 0
      DO 10 I=1,100
         J=I
         CALL SUB1(A+B,C+D,E(1:I)+F(1:I),CODE,J)
   10 CONTINUE
C
      IF(CODE.EQ.0) WRITE(6,*) 'OK'
C
      STOP
      END
C
C
      SUBROUTINE SUB1(A,B,C,CODE,K)
      INTEGER A(1000),B(500),C(100),CODE
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
      DO 50 I=1,K
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
