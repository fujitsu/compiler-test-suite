      INTEGER A(1000),B(100),C(100),D(100),E(100),F(100),G(100),CODE
      DATA A/1000*0/,B/100*0/,C/100*1/,D/100*1/,E/100*1/
      DATA F/100*1/,G/100*0/
C
      CODE = 0
      A = A + 1
      B = B + 1
      CALL SUB1(C+D,E+F,CODE)
      G = G + 1
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
         IF(G(I).NE.1) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = G(',I,')'
            CODE = 1
            GO TO 60
         ENDIF
   50 CONTINUE
C
      IF(CODE.EQ.0) WRITE(6,*) 'OK'
   60 CONTINUE
C
      STOP
      END
C
C
      SUBROUTINE SUB1(C,D,CODE)
      INTEGER C(100),D(100),CODE
C
      DO 10 I=1,100
         IF(C(I).NE.2) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = C(',I,')'
            CODE = 1
            GO TO 20
         ENDIF
   10 CONTINUE
C
   20 CONTINUE
      DO 30 I=1,100
         IF(D(I).NE.2) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = D(',I,')'
            CODE = 1
            GO TO 40
         ENDIF
   30 CONTINUE
C
   40 CONTINUE
      RETURN
      END
