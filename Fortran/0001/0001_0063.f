      INTEGER ERROR
      DATA ERROR/0/

         CALL TEST200(ERROR)
         CALL TEST201(ERROR)
         CALL TEST202(ERROR)
         CALL TEST203(ERROR)
         CALL TEST204(ERROR)
         CALL TEST205(ERROR)
         CALL TEST206(ERROR)
         CALL TEST207(ERROR)
      IF(ERROR .EQ. 0) THEN
         WRITE(6,*) 'OK'
      ELSE
         WRITE(6,*) 'NG'
      ENDIF

      STOP
      END

C
      SUBROUTINE TEST200(ERROR)
C
      INTEGER A(1000),CODE,ERROR
      DATA A/1000*0/,CODE/0/

      DO 10 I=1,100
         A = A + 1
   10 CONTINUE
C
      DO 20 I=1,1000
         IF(A(I).NE.100) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = A(',I,')'
            CODE=1
            GO TO 30
         ENDIF
   20 CONTINUE
C
   30 CONTINUE
      ERROR=ERROR+CODE
      END SUBROUTINE TEST200
C
      SUBROUTINE TEST201(ERROR)
C
      INTEGER A(1000),B(500),CODE,ERROR
      DATA A/1000*0/,B/500*0/
C
      CODE = 0
      DO 10 I=1,100
         A = A + 1
         B = B + 1
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
C
      ERROR=ERROR+CODE
      END SUBROUTINE TEST201
C
      SUBROUTINE TEST202(ERROR)
C
      INTEGER A(1000),B(500),C(100),CODE,ERROR
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
   70 CONTINUE
      ERROR=ERROR+CODE
      END SUBROUTINE TEST202
C
      SUBROUTINE TEST203(ERROR)
C
      INTEGER A(1000),B(1000),C(1000),D(1000),CODE,ERROR
      DATA A/1000*1/,B/1000*1/,C/1000*1/,D/1000*1/
C
      CODE = 0
      DO 10 I=1,10
         DO 20 J=1,100
            CALL SUB1(A+B,C+D,CODE)
   20    CONTINUE
   10 CONTINUE
C
      ERROR=ERROR+CODE
      END SUBROUTINE
C
C
      SUBROUTINE SUB1(A,B,CODE)
      INTEGER A(1000),B(1000),CODE
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
         IF(B(I).NE.2) THEN
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
      SUBROUTINE TEST204(ERROR)
C
      INTEGER A(1000),B(1000),C(1000),D(1000),CODE,ERROR
      REAL*8  E(100),F(100),G(100),H(100)
      DATA A/1000*1/,B/1000*1/,C/1000*1/,D/1000*1/
      DATA E/100*1.0/,F/100*1.0/,G/100*1.0/,H/100*1.0/
C
      CODE = 0
      DO 10 I=1,10
         CALL SUB2(A+B,C+D,CODE)
         DO 20 J=1,100
            CALL SUB3(E+F,G+H,CODE)
   20    CONTINUE
   10 CONTINUE
C
      ERROR=ERROR+CODE
      END SUBROUTINE TEST204
C
C
      SUBROUTINE SUB2(A,B,CODE)
      INTEGER A(1000),B(1000),CODE
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
         IF(B(I).NE.2) THEN
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
      SUBROUTINE SUB3(C,D,CODE)
      INTEGER CODE
      REAL*8 C(100),D(100)
C
      DO 10 I=1,100
         IF(C(I).NE.2.0) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = C(',I,')'
            CODE = 1
            GO TO 20
         ENDIF
   10 CONTINUE
C
   20 CONTINUE
      DO 30 I=1,100
         IF(D(I).NE.2.0) THEN
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

      SUBROUTINE TEST205(ERROR)
C
      INTEGER A(1000),B(1000),C(1000),D(1000),CODE,ERROR
      REAL*8  E(100),F(100),G(100),H(100)
      REAL*8  I(100),J(100),K(100),L(100)
      DATA A/1000*1/,B/1000*1/,C/1000*1/,D/1000*1/
      DATA E/100*1.0/,F/100*1.0/,G/100*1.0/,H/100*1.0/
      DATA I/100*1.0/,J/100*1.0/,K/100*1.0/,L/100*1.0/
C
      CODE = 0
      DO 10 II=1,10
         CALL SUB4(A+B,C+D,CODE)
         DO 20 JJ=1,100
            CALL SUB5(E+F,G+H,CODE)
   20    CONTINUE
         CALL SUB6(I+J,K+L,CODE)
   10 CONTINUE
C
      ERROR=ERROR+CODE
      END SUBROUTINE TEST205
C
C
      SUBROUTINE SUB4(A,B,CODE)
      INTEGER A(1000),B(1000),CODE
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
         IF(B(I).NE.2) THEN
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
      SUBROUTINE SUB5(C,D,CODE)
      INTEGER CODE
      REAL*8 C(100),D(100)
C
      DO 10 I=1,100
         IF(C(I).NE.2.0) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = C(',I,')'
            CODE = 1
            GO TO 20
         ENDIF
   10 CONTINUE
C
   20 CONTINUE
      DO 30 I=1,100
         IF(D(I).NE.2.0) THEN
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
      SUBROUTINE SUB6(E,F,CODE)
      REAL*8  E(100),F(100)
      INTEGER CODE
C
      DO 10 I=1,100
         IF(E(I).NE.2.0) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = E(',I,')'
            CODE = 1
            GO TO 20
         ENDIF
   10 CONTINUE
C
   20 CONTINUE
      DO 30 I=1,100
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

C
      SUBROUTINE TEST206(ERROR)
C
      INTEGER A(1000),B(1000),C(1000),D(1000),E(1000),F(1000),CODE
     +       ,ERROR
      DATA A/1000*1/,B/1000*1/,C/1000*1/,D/1000*1/,E/1000*1/,F/1000*1/
C
      CODE = 0
      DO 10 I=1,5
         DO 20 J=1,5
            DO 30 K=1,100
               CALL SUB7(A+B,C+D,E+F,CODE)
   30       CONTINUE
   20    CONTINUE
   10 CONTINUE
C
      ERROR=ERROR+CODE
      END SUBROUTINE TEST206
C
C
      SUBROUTINE SUB7(A,B,C,CODE)
      INTEGER A(1000),B(1000),C(1000),CODE
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
         IF(B(I).NE.2) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = B(',I,')'
            CODE = 1
            GO TO 40
         ENDIF
   30 CONTINUE
C
   40 CONTINUE
      DO 50 I=1,1000
         IF(C(I).NE.2) THEN
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
      SUBROUTINE TEST207(ERROR)
C
      INTEGER A(1000),B(1000),C(1000),D(1000),E(1000),F(1000),CODE
     +       ,ERROR
      REAL*8  G(100),H(100),I(100),J(100),K(100),L(100)
      DATA A/1000*1/,B/1000*1/,C/1000*1/,D/1000*1/,E/1000*1/,F/1000*1/
      DATA G/100*1.0/,H/100*1.0/,I/100*1.0/
      DATA J/100*1.0/,K/100*1.0/,L/100*1.0/
C
      CODE = 0
      DO 10 II=1,100
         DO 20 JJ=1,100
            CALL SUB8(A+B,C+D,E+F,CODE)
   20    CONTINUE
         CALL SUB9(G+H,I+J,K+L,CODE)
   10 CONTINUE
C
      ERROR=ERROR+CODE
      END SUBROUTINE TEST207
C
C
      SUBROUTINE SUB8(A,B,C,CODE)
      INTEGER A(1000),B(1000),C(1000),CODE
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
         IF(B(I).NE.2) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = B(',I,')'
            CODE = 1
            GO TO 40
         ENDIF
   30 CONTINUE
C
   40 CONTINUE
      DO 50 I=1,1000
         IF(C(I).NE.2) THEN
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
      SUBROUTINE SUB9(D,E,F,CODE)
      INTEGER CODE
      REAL*8  D(100),E(100),F(100)
C
      DO 10 I=1,100
         IF(D(I).NE.2.0) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = D(',I,')'
            CODE = 1
            GO TO 20
         ENDIF
   10 CONTINUE
C
   20 CONTINUE
      DO 30 I=1,100
         IF(E(I).NE.2.0) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = E(',I,')'
            CODE = 1
            GO TO 40
         ENDIF
   30 CONTINUE
C
   40 CONTINUE
      DO 50 I=1,100
         IF(F(I).NE.2.0) THEN
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
