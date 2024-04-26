      INTEGER A(1000),B(1000),CODE
      DATA A/1000*0/,B/1000*0/
C
      CODE = 0
      N = 1000
      DO 10 I=1,1
      A(1:N) = A(1:N) + 1
      B(1:N) = B(1:N) + 1
   10 CONTINUE
C
      DO 20 I=1,1000
         IF(A(I).NE.1) THEN
            WRITE(6,*) 'ELEMENT NUMBER = A(',I,')'
            CODE = 1
            GO TO 30
         ENDIF
   20 CONTINUE
C
   30 CONTINUE
      DO 40 I=1,1000
         IF(B(I).NE.1) THEN
            WRITE(6,*) 'ELEMENT NUMBER = B(',I,')'
            CODE = 1
            GO TO 50
         ENDIF
   40 CONTINUE
C
      IF(CODE.EQ.0) WRITE(6,*) '*** OK ***'
C
   50 CONTINUE
      STOP
      END
