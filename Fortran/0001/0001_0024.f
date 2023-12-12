      INTEGER A(1000),B(100),C(100),D(1000),CODE
      DATA A/1000*0/,B/100*0/,C/100*0/,D/1000*0/
C
      CODE = 0
      A = A + 1
      B = B + 1
      C = C + 1
      D = D + 1
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
      DO 30 I=1,100
         IF(B(I).NE.1) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = B(',I,')'
            CODE = 1
            GO TO 40
         ENDIF
   30 CONTINUE
C
   40 CONTINUE
      DO 50 I=1,100
         IF(C(I).NE.1) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = C(',I,')'
            CODE = 1
            GO TO 60
         ENDIF
   50 CONTINUE
C
   60 CONTINUE
      DO 70 I=1,1000
         IF(D(I).NE.1) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = D(',I,')'
            CODE = 1
            GO TO 80
         ENDIF
   70 CONTINUE
C
      IF(CODE.EQ.0) WRITE(6,*) 'OK'
C
   80 CONTINUE
      STOP
      END
