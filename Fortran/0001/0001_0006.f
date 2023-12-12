      INTEGER A(1000),B(1000),CODE
      DATA A/1000*0/,B/1000*0/
C
      CODE = 0
      A = A + 1
      B = B + 1
C
      DO 10 I=1,1000
         IF(A(I).NE.1) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = A(',I,')'
            CODE = 1
            GO TO 20
         ENDIF
   10 CONTINUE
C
   20 CONTINUE
      DO 30 I=1,1000
         IF(B(I).NE.1) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = B(',I,')'
            CODE = 1
            GO TO 40
         ENDIF
   30 CONTINUE
C
      IF(CODE.EQ.0) WRITE(6,*) 'OK'
C
   40 CONTINUE
      STOP
      END
