      INTEGER A(100),B(500),C(500),D(1000),E(1000),CODE
      DATA A/100*0/,B/500*1/,C/500*1/
      DATA D/1000*1/,E/1000*1/
C
      CODE = 0
      DO 10 I=1,100
         A(1:I) = A(1:I) + 1
         J=I
         CALL SUB1(B+C,D(1:I)+E(1:I),CODE,J)
   10 CONTINUE
C
      DO 20 I=1,100
         IF(A(I).NE.101-I) THEN
            IF(.NOT.BTEST(CODE,0)) THEN
               WRITE(6,*) 'NG'
               WRITE(6,*) 'ELEMENT NUMBER = A(',I,')'
               CODE=IBSET(CODE,0)
            ENDIF
            GO TO 30
         ENDIF
   20 CONTINUE
C
      IF(CODE.EQ.0) WRITE(6,*) 'OK'
C
   30 CONTINUE
C
      STOP
      END
C
C
      SUBROUTINE SUB1(B,C,CODE,K)
      INTEGER B(500),C(100),CODE
C
      DO 10 I=1,500
         IF(B(I).NE.2) THEN
            IF(.NOT.BTEST(CODE,1)) THEN
               WRITE(6,*) 'NG'
               WRITE(6,*) 'ELEMENT NUMBER = B(',I,')'
               CODE=IBSET(CODE,1)
            ENDIF
            GO TO 20
         ENDIF
   10 CONTINUE
C
   20 CONTINUE
      DO 30 I=1,K
         IF(C(I).NE.2) THEN
            IF(.NOT.BTEST(CODE,2)) THEN
               WRITE(6,*) 'NG'
               WRITE(6,*) 'ELEMENT NUMBER = C(',I,')'
               CODE=IBSET(CODE,2)
            ENDIF
            GO TO 40
         ENDIF
   30 CONTINUE
C
   40 CONTINUE
      RETURN
      END
