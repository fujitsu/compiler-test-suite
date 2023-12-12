      INTEGER ERROR
      DATA ERROR/0/

         CALL TEST108(ERROR)
         CALL TEST109(ERROR)
         CALL TEST110(ERROR)
         CALL TEST111(ERROR)
         CALL TEST112(ERROR)
         CALL TEST113(ERROR)
         CALL TEST114(ERROR)
         IF(ERROR .EQ. 0) THEN
           WRITE(6,*) 'OK'
         ELSE
           WRITE(6,*) 'NG'
         ENDIF

      STOP
      END

C
      SUBROUTINE TEST108(ERROR)

      INTEGER CODE,ERROR
      REAL*8  A(1000),D(1000),E(1000)
      REAL*8  F(1000),G(1000),H(1000),I(1000)
      REAL*8  B(1000),C(1000),J(1000),K(1000),L(1000)
      DATA A/1000*1.0/,B/1000*1.0/,C/1000*1.0/,D/1000*1.0/
      DATA E/1000*1.0/,F/1000*1.0/,G/1000*1.0/,H/1000*1.0/
      DATA I/1000*1.0/,J/1000*1.0/,K/1000*1.0/,L/1000*1.0/
C
      CODE = 0
      CALL SUB1(A+B,C+D,CODE)
      CALL SUB2(E+F,G+H,CODE)
      CALL SUB3(I+J,K+L,CODE)
C
      ERROR=ERROR+CODE
      END SUBROUTINE TEST108
C
C
      SUBROUTINE SUB1(A,B,CODE)
      INTEGER CODE
      REAL*8  A(1000),B(1000)
C
      DO 10 I=1,1000
         IF(A(I).NE.2.0) THEN
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
      INTEGER CODE
      REAL*8  C(1000),D(1000)
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
      SUBROUTINE SUB3(E,F,CODE)
      INTEGER CODE
      REAL*8  E(1000),F(1000)
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

C
      SUBROUTINE TEST109(ERROR)

      INTEGER*4 ERROR
      REAL*4  A(1000)
      DATA A/1000*0.0/
C
      A = A + 1.0
C
      DO 10 I=1,1000
         IF(A(I).NE.1.0) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = A(',I,')'
            ERROR=ERROR+1
            GO TO 20
         ENDIF
   10 CONTINUE
C
   20 CONTINUE
      END SUBROUTINE TEST109

C
      SUBROUTINE TEST110(ERROR)

      INTEGER A(1000),B(500),CODE,ERROR
      DATA A/1000*0/,B/500*0/
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
      DO 30 I=1,500
         IF(B(I).NE.1) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = B(',I,')'
            CODE = 1
            GO TO 40
         ENDIF
   30 CONTINUE
C
   40 CONTINUE
      ERROR=ERROR+CODE
      END SUBROUTINE TEST110


C
      SUBROUTINE TEST111(ERROR)

      INTEGER A(1000),B(500),CODE,ERROR
      DATA A/1000*0/,B/500*1/
C
      CODE = 0
      N = 999
      A(1:N) = A(1:N) + 1
      B = B + 1
C
      DO 10 I=1,999
         IF(A(I).NE.1) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = A(',I,')'
            CODE = 1
            GO TO 20
         ENDIF
   10 CONTINUE
C
   20 CONTINUE
      DO 30 I=1,500
         IF(B(I).NE.2) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = B(',I,')'
            CODE = 1
            GO TO 40
         ENDIF
   30 CONTINUE
C
   40 CONTINUE
      ERROR=ERROR+CODE
      END SUBROUTINE TEST111

C
      SUBROUTINE TEST112(ERROR)

      INTEGER A(1000),B(1000),ERROR
      DATA A/1000*1/,B/1000*1/
C
      CALL SUB4(A+B,ERROR)
C
      END SUBROUTINE TEST112
C
C
      SUBROUTINE SUB4(A,ERROR)
      INTEGER A(1000),ERROR
C
      DO 10 I=1,1000
         IF(A(I).NE.2) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = A(',I,')'
            ERROR=ERROR+1
            GO TO 20
         ENDIF
   10 CONTINUE
C
   20 CONTINUE
      RETURN
      END

C
      SUBROUTINE TEST113(ERROR)

      INTEGER A(1000),B(1000),C(1000),D(1000),E(1000),F(1000),CODE,ERROR
      REAL*8  G(1000),H(1000)
      DATA A/1000*1/,B/1000*1/,C/1000*1/,D/1000*1/
      DATA E/1000*1/,F/1000*1/,G/1000*1.0/,H/1000*1.0/
C
      CODE = 0
      CALL SUB5(A+B,C+D,CODE)
      CALL SUB6(E+F,G+H,CODE)
C
      ERROR=ERROR+CODE
      END SUBROUTINE TEST113
C
C
      SUBROUTINE SUB5(A,B,CODE)
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
      SUBROUTINE SUB6(C,D,CODE)
      INTEGER C(1000),CODE
      REAL*8  D(1000)
C
      DO 10 I=1,1000
         IF(C(I).NE.2) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = C(',I,')'
            CODE = 1
            GO TO 20
         ENDIF
   10 CONTINUE
C
   20 CONTINUE
      DO 30 I=1,1000
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
      SUBROUTINE TEST114(ERROR)

      INTEGER A(1000),B(1000),G(1000),H(1000),CODE,ERROR
      REAL*8  C(1000),D(1000),I(1000),J(1000)
      REAL*4  E(1000),F(1000),K(1000),L(1000)
      DATA A/1000*1/,B/1000*1/,G/1000*1/,H/1000*1/
      DATA C/1000*1.0/,D/1000*1.0/,I/1000*1.0/,J/1000*1.0/
      DATA E/1000*1.0/,F/1000*1.0/,K/1000*1.0/,L/1000*1.0/
C
      CODE = 0
      CALL SUB7(A+B,C+D,CODE)
      CALL SUB8(E+F,G+H,CODE)
      CALL SUB9(I+J,K+L,CODE)
C
      ERROR=ERROR+CODE
      END SUBROUTINE TEST114
C
C
      SUBROUTINE SUB7(A,B,CODE)
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
      SUBROUTINE SUB8(C,D,CODE)
      REAL* 4 C(1000)
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
      SUBROUTINE SUB9(E,F,CODE)
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
