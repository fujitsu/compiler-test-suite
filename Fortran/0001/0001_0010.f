      INTEGER A(1000),B(1000),C(1000),CODE
      DATA A/1000*1/,B/1000*2/,C/1000*3/
C
      CODE = 0
      A = A + B + C + 1
      B = B + 1
      C = C + 1
C
      DO 10 I=1,1000
         IF(A(I).NE.7) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = A(',I,')'
            CODE = 1
            GO TO 20
         ENDIF
   10 CONTINUE
C
   20 CONTINUE
      DO 30 I=1,1000
         IF(B(I).NE.3) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = B(',I,')'
            CODE = 1
            GO TO 40
         ENDIF
   30 CONTINUE
C
   40 CONTINUE
      DO 50 I=1,1000
         IF(C(I).NE.4) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = C(',I,')'
            CODE = 1
            GO TO 60
         ENDIF
   50 CONTINUE
C
      IF(CODE.EQ.0) WRITE(6,*) 'OK'
C
   60 CONTINUE
      STOP
      END
