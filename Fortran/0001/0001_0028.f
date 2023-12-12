      INTEGER A(1000),B(1000),CODE
      REAL*8  C(1000),D(1000),I(1000),J(1000)
      REAL*4  E(1000),F(1000),G(1000),H(1000)
      DATA A/1000*0/,B/1000*0/,C/1000*1.0/,D/1000*1.0/,E/1000*2.0/
      DATA F/1000*2.0/,G/1000*3.0/,H/1000*3.0/,I/1000*4.0/,J/1000*4.0/
C
      CODE = 0
      CALL SUB1(A+B,C+D,E+F,CODE)
      CALL SUB2(G+H,I+J,CODE)
C
      IF(CODE.EQ.0) WRITE(6,*) 'OK'
C
      STOP
      END
C
C
      SUBROUTINE SUB1(A,B,C,CODE)
      INTEGER A(1000),CODE
      REAL*8  B(1000)
      REAL*4 C(1000)
C
      DO 10 I=1,1000
         IF(A(I).NE.0) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = A(',I,')'
            CODE = 1
            GO TO 20
         ENDIF
   10 CONTINUE
C
   20 CONTINUE
      DO 30 I=1,1000
         IF(B(I).NE.2.0) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = B(',I,')'
            CODE = 1
            GO TO 40
         ENDIF
   30 CONTINUE
C
   40 CONTINUE
      DO 50 I=1,1000
         IF(C(I).NE.4.0) THEN
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
C
C
      SUBROUTINE SUB2(D,E,CODE)
      INTEGER CODE
      REAL*4  D(1000)
      REAL*8  E(1000)
C
      DO 10 I=1,1000
         IF(D(I).NE.6.0) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = D(',I,')'
            CODE = 1
            GO TO 20
         ENDIF
   10 CONTINUE
C
   20 CONTINUE
      DO 30 I=1,1000
         IF(E(I).NE.8.0) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = E(',I,')'
            CODE = 1
            GO TO 40
         ENDIF
   30 CONTINUE
C
   40 CONTINUE
      RETURN
      END
