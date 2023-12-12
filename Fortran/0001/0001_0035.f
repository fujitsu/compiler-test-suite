      INTEGER A(1000),B(500),C(100),CODE
      DATA A/1000*0/,B/500*0/,C/100*0/
C
      CODE = 0
      DO 10 I=1,100
         A = A + 1
         B = B + 1
         C = C + 1
   10 CONTINUE
C
      DO 20 I=1,1000
         IF(A(I).NE.100) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = A(',I,')'
            CODE = 1
            GO TO 30
         ENDIF
   20 CONTINUE
C
   30 CONTINUE
      DO 40 I=1,500
         IF(B(I).NE.100) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = B(',I,')'
            CODE = 1
            GO TO 50
         ENDIF
   40 CONTINUE
C
   50 CONTINUE
      DO 60 I=1,100
         IF(C(I).NE.100) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = C(',I,')'
            CODE = 1
            GO TO 70
         ENDIF
   60 CONTINUE
C
      IF(CODE.EQ.0) WRITE(6,*) 'OK'
C
   70 CONTINUE
      STOP
      END
