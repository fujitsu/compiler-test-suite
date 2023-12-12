      INTEGER A(1000),B(1000),G(1000),H(1000),CODE
      REAL*8  C(1000),D(1000),I(1000),J(1000)
      REAL*4  E(1000),F(1000),K(1000),L(1000)
      DATA A/1000*1/,B/1000*1/,G/1000*1/,H/1000*1/
      DATA C/1000*1.0/,D/1000*1.0/,I/1000*1.0/,J/1000*1.0/
      DATA E/1000*1.0/,F/1000*1.0/,K/1000*1.0/,L/1000*1.0/
C
      CODE = 0
      CALL SUB1(A+B,C+D,CODE)
      CALL SUB2(E+F,G+H,CODE)
      CALL SUB3(I+J,K+L,CODE)
C
      IF(CODE.EQ.0) WRITE(6,*) 'OK'
C
      STOP
      END
C
C
      SUBROUTINE SUB1(A,B,CODE)
      INTEGER A(1000),CODE
      REAL*8  B(1000)
C
      DO 10 I=1,1000
         IF(A(I).NE.2) THEN
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
      RETURN
      END
C
C
      SUBROUTINE SUB2(C,D,CODE)
      REAL*4  C(1000)
      INTEGER D(1000),CODE
C
      DO 10 I=1,1000
         IF(C(I).NE.2.0) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = C(',I,')'
            CODE = 1
            GO TO 20
         ENDIF
   10 CONTINUE
C
   20 CONTINUE
      DO 30 I=1,1000
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
C
C
      SUBROUTINE SUB3(E,F,CODE)
      REAL*8  E(1000)
      REAL*4  F(1000)
      INTEGER CODE
C
      DO 10 I=1,1000
         IF(E(I).NE.2.0) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = E(',I,')'
            CODE = 1
            GO TO 20
         ENDIF
   10 CONTINUE
C
   20 CONTINUE
      DO 30 I=1,1000
         IF(F(I).NE.2.0) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = F(',I,')'
            CODE = 1
            GO TO 40
         ENDIF
   30 CONTINUE
C
   40 CONTINUE
      RETURN
      END
