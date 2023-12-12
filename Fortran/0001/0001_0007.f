      INTEGER A(1000),B(1000),C(1000),CODE
      DATA A/1000*0/,B/1000*0/,C/1000*0/
C
      CODE = 0
      CALL SUB1(A,B,C,1000,CODE)
C
      IF(CODE.EQ.0) WRITE(6,*) 'OK'
C
      STOP
      END
C
      SUBROUTINE SUB1(A,B,C,N,CODE)
      INTEGER A(N),B(N),C(N),CODE
C
      A(1:N) = B(1:N) + 1
      B(1:N) = B(1:N) + 1
      C(1:N) = C(1:N) + 1
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
   40 CONTINUE
      DO 50 I=1,1000
         IF(C(I).NE.1) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = C(',I,')'
            CODE = 1
            GO TO 60
         ENDIF
   50 CONTINUE
C
   60 CONTINUE
      RETURN
      END
