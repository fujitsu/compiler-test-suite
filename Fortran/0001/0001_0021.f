      INTEGER A(1000),B(1000),G(100),H(100),CODE
      REAL*8  C(1000),D(1000),E(500),F(500)
      REAL*4  I(1000),J(1000),K(300),L(300)
      DATA A/1000*1/,B/1000*1/,G/100*1/,H/100*1/
      DATA C/1000*2.0/,D/1000*2.0/,E/500*2.0/,F/500*2.0/
      DATA I/1000*3.0/,J/1000*3.0/,K/300*3.0/,L/300*3.0/
C
      CODE = 0
      CALL SUB1(A+B,C+D,E+F,CODE)
      CALL SUB2(G+H,I+J,K+L,CODE)
C
      IF(CODE.EQ.0) WRITE(6,*) 'OK'
C
      STOP
      END
C
C
      SUBROUTINE SUB1(A,B,C,CODE)
      INTEGER A(1000),CODE
      REAL*8  B(1000),C(500)
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
         IF(B(I).NE.4.0) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = B(',I,')'
            CODE = 1
            GO TO 40
         ENDIF
   30 CONTINUE
C
   40 CONTINUE
      DO 50 I=1,500
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
      SUBROUTINE SUB2(D,E,F,CODE)
      INTEGER D(100),CODE
      REAL*4  E(1000),F(300)
C
      DO 10 I=1,100
         IF(D(I).NE.2) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER =D(',I,')'
            CODE = 1
            GO TO 20
         ENDIF
   10 CONTINUE
C
   20 CONTINUE
      DO 30 I=1,1000
         IF(E(I).NE.6.0) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = E(',I,')'
            CODE = 1
            GO TO 40
         ENDIF
   30 CONTINUE
C
   40 CONTINUE
      DO 50 I=1,300
         IF(F(I).NE.6.0) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = F(',I,')'
            CODE = 1
            GO TO 60
         ENDIF
   50 CONTINUE
C
   60 CONTINUE
      RETURN
      END
