      INTEGER CODE
      DATA CODE/0/

        CALL TEST100(CODE)
        CALL TEST101(CODE)
        CALL TEST102(CODE)
        CALL TEST103(CODE)
        CALL TEST104(CODE)
        CALL TEST105(CODE)
        CALL TEST106(CODE)
        CALL TEST107(CODE)
        IF(CODE .EQ. 0) THEN
          WRITE(6,*) 'OK'
        ELSE
          WRITE(6,*) 'NG'
        ENDIF          

      STOP
      END

C
      SUBROUTINE TEST100(CODE)
      INTEGER A(1000),CODE
      DATA A/1000*0/
C
      A = A + 1
C
      DO 10 I=1,1000
         IF(A(I).NE.1) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = A(',I,')'
	    CODE=CODE+1
            GO TO 20
         ENDIF
   10 CONTINUE
C
   20 CONTINUE
      END SUBROUTINE TEST100
C
      SUBROUTINE TEST101(CODE1)
      INTEGER A(1000),B(1000),CODE,CODE1
      DATA A/1000*0/,B/1000*0/
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
      CODE1=CODE1+CODE
      END SUBROUTINE TEST101
C
      SUBROUTINE TEST102(CODE1)
      INTEGER A(1000),B(1000),C(1000),CODE,CODE1
      DATA A/1000*0/,B/1000*0/,C/1000*0/
C
      CODE = 0
      CALL SUB1(A,B,C,1000,CODE)
C
      CODE1=CODE1+CODE
      END SUBROUTINE TEST102
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
C

      SUBROUTINE TEST103(CODE1)
      INTEGER A(1000),B(1000),C(1000),CODE,CODE1
      DATA A/1000*5/,B/1000*5/,C/1000*5/
C
      CODE = 0
      CALL SUB2(A+B,B+C,CODE)
C
      CODE1=CODE1+CODE
      END SUBROUTINE TEST103
C
C
      SUBROUTINE SUB2(A,B,CODE)
      INTEGER A(1000),B(1000),CODE
C
      DO 10 I=1,1000
         IF(A(I).NE.10) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = A(',I,')'
            CODE = 1
            GO TO 20
         ENDIF
   10 CONTINUE
C
   20 CONTINUE
      DO 30 I=1,1000
         IF(B(I).NE.10) THEN
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
      SUBROUTINE TEST104(CODE1)
      INTEGER A(1000),B(1000),C(1000),D(1000),CODE,CODE1
      DATA A/1000*0/,B/1000*5/,C/1000*5/,D/1000*5/
C
      CODE = 0
      A = A + 1
      CALL SUB3(B+C,C+D,CODE)
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
      CODE1=CODE1+CODE
      END SUBROUTINE TEST104
C
C
      SUBROUTINE SUB3(B,C,CODE)
      INTEGER B(1000),C(1000),CODE
C
      DO 10 I=1,1000
         IF(B(I).NE.10) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = B(',I,')'
            CODE = 1
            GO TO 20
         ENDIF
   10 CONTINUE
C
   20 CONTINUE
      DO 30 I=1,1000
         IF(C(I).NE.10) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = C(',I,')'
            CODE = 1
            GO TO 40
         ENDIF
   30 CONTINUE
C
   40 CONTINUE
      RETURN
      END
C
      SUBROUTINE TEST105(CODE1)
      INTEGER A(1000),B(1000),C(1000),CODE,CODE1
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
   60 CONTINUE
      CODE1=CODE1+CODE
      END SUBROUTINE TEST105
C
      SUBROUTINE TEST106(CODE1)
      INTEGER A(1000),B(1000),C(1000),D(1000),E(1000),F(1000),CODE,CODE1
      DATA A/1000*1/,B/1000*2/,C/1000*3/,D/1000*4/,E/1000*5/,F/1000*6/
C
      CODE = 0
      CALL SUB4(A+B,C+D,E+F,CODE)
C
      CODE1=CODE1+CODE
      END SUBROUTINE TEST106
C
C
      SUBROUTINE SUB4(A,B,C,CODE)
      INTEGER A(1000),B(1000),C(1000),CODE
C
      DO 10 I=1,1000
         IF(A(I).NE.3) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = A(',I,')'
            CODE = 1
            GO TO 20
         ENDIF
   10 CONTINUE
C
   20 CONTINUE
      DO 30 I=1,1000
         IF(B(I).NE.7) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = B(',I,')'
            CODE = 1
            GO TO 40
         ENDIF
   30 CONTINUE
C
   40 CONTINUE
      DO 50 I=1,1000
         IF(C(I).NE.11) THEN
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
      SUBROUTINE TEST107(CODE1)
      INTEGER CODE,CODE1
      REAL*4  A(1000),B(1000),C(1000),D(1000),E(1000)
      REAL*4  F(1000),G(1000),H(1000),I(1000),J(1000)
      DATA A/1000*1.0/,B/1000*1.0/,C/1000*1.0/,D/1000*1.0/,E/1000*1.0/
      DATA F/1000*1.0/,G/1000*1.0/,H/1000*1.0/,I/1000*1.0/,J/1000*1.0/
C
      CODE = 0
      CALL SUB5(A+B,C+D,CODE)
      CALL SUB6(E+F,G+H,I+J,CODE)
C
      CODE1=CODE1+CODE
      END SUBROUTINE TEST107
C
C
      SUBROUTINE SUB5(A,B,CODE)
      INTEGER CODE
      REAL*4  A(1000),B(1000)
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
      SUBROUTINE SUB6(C,D,E,CODE)
      INTEGER CODE
      REAL*4  C(1000),D(1000),E(1000)
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
      DO 50 I=1,1000
         IF(E(I).NE.2.0) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = E(',I,')'
            CODE = 1
            GO TO 60
         ENDIF
   50 CONTINUE
C
   60 CONTINUE
      RETURN
      END
