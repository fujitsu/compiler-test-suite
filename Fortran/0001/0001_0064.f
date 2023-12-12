      INTEGER ERROR
      DATA ERROR/0/

         CALL TEST208(ERROR)
         CALL TEST209(ERROR)
         CALL TEST210(ERROR)
         CALL TEST211(ERROR)
         CALL TEST212(ERROR)
         CALL TEST213(ERROR)
         CALL TEST214(ERROR)
         CALL TEST215(ERROR)
      IF(ERROR .EQ. 0) THEN
        WRITE(6,*) 'OK'
      ELSE
        WRITE(6,*) 'NG'
      ENDIF

      STOP
      END
C
C
      SUBROUTINE TEST208(ERROR)
C
      INTEGER A(1000),B(1000),C(1000),D(1000),E(1000),F(1000),CODE
     +       ,ERROR
      REAL*8  G(100),H(100),I(100),J(100),K(100),L(100)
      REAL*8  M(100),N(100),O(100),P(100),Q(100),R(100)
      DATA A/1000*1/,B/1000*1/,C/1000*1/,D/1000*1/,E/1000*1/,F/1000*1/
      DATA G/100*1.0/,H/100*1.0/,I/100*1.0/
      DATA J/100*1.0/,K/100*1.0/,L/100*1.0/
      DATA M/100*1.0/,N/100*1.0/,O/100*1.0/
      DATA P/100*1.0/,Q/100*1.0/,R/100*1.0/
C
      CODE = 0
      DO 10 II=1,100
         CALL SUB1(A+B,C+D,E+F,CODE)
         DO 20 JJ=1,100
            DO 30 KK=1,100
               CALL SUB2(G+H,I+J,K+L,CODE)
   30       CONTINUE
            CALL SUB3(M+N,O+P,Q+R,CODE)
   20    CONTINUE
   10 CONTINUE
C
      ERROR=ERROR+CODE
      END SUBROUTINE TEST208
C
C
      SUBROUTINE SUB1(A,B,C,CODE)
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
      SUBROUTINE SUB2(D,E,F,CODE)
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
C
C
      SUBROUTINE SUB3(G,H,I,CODE)
      INTEGER CODE
      REAL*8  G(100),H(100),I(100)
C
      DO 10 K=1,100
         IF(G(K).NE.2.0) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = G(',K,')'
            CODE = 1
            GO TO 20
         ENDIF
   10 CONTINUE
C
   20 CONTINUE
      DO 30 K=1,100
         IF(H(K).NE.2.0) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = H(',K,')'
            CODE = 1
            GO TO 40
         ENDIF
   30 CONTINUE
C
   40 CONTINUE
      DO 50 K=1,100
         IF(I(K).NE.2.0) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = I(',K,')'
            CODE = 1
            GO TO 60
         ENDIF
   50 CONTINUE
C
   60 CONTINUE
      RETURN
      END


C
      SUBROUTINE TEST209(ERROR)
C
      INTEGER A(1000),B(1000),C(1000),D(1000),CODE,ERROR
      INTEGER E(1000),F(1000),G(1000),H(1000)
      DATA A/1000*1/,B/1000*1/,C/1000*1/,D/1000*1/
      DATA E/1000*1/,F/1000*1/,G/1000*1/,H/1000*1/
C
      CODE = 0
      DO 10 I=1,100
         CALL SUB4(A+B,C+D,CODE)
         CALL SUB5(E+F,G+H,CODE)
   10 CONTINUE
C
      ERROR=ERROR+CODE
      END SUBROUTINE TEST209
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
      SUBROUTINE SUB5(C,D,CODE)
      INTEGER C(1000),D(1000),CODE
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
      SUBROUTINE TEST210(ERROR)
C
      INTEGER A(10),B(10),C(10),D(10),CODE,ERROR
      DATA A/10*1/,B/10*1/,C/10*1/,D/10*1/
C
      CODE = 0
      A = A + 1
      DO 10 I=1,2
         CALL SUB6(A+B,C+D,CODE)
   10 CONTINUE
C
      DO 20 I=1,10
         IF(A(I).NE.2) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = A(',I,')',A(I)
            CODE = 1
            GO TO 30
         ENDIF
   20 CONTINUE
C
   30 CONTINUE
      ERROR=ERROR+CODE
      END SUBROUTINE TEST210
C
C
      SUBROUTINE SUB6(B,C,CODE)
      INTEGER B(10),C(10),CODE
C
      DO 10 I=1,10
         IF(B(I).NE.3) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = B(',I,')',B(I)
            CODE = 1
            GO TO 20
         ENDIF
   10 CONTINUE
C
   20 CONTINUE
      DO 30 I=1,10
         IF(C(I).NE.2) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = C(',I,')',C(I)
            CODE = 1
            GO TO 40
         ENDIF
   30 CONTINUE
C
   40 CONTINUE
      RETURN
      END


C
      SUBROUTINE TEST211(ERROR)
C
      INTEGER A(1000),B(1000),CODE,ERROR
      DATA A/1000*0/,B/1000*0/
C
      CODE = 0
      DO 10 I=1,1000
         A = A + 1
         B = B + 1
   10 CONTINUE
C
      DO 20 I=1,1000
         IF(A(I).NE.1000) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = A(',I,')'
            CODE = 1
            GO TO 30
         ENDIF
   20 CONTINUE
C
   30 CONTINUE
      DO 40 I=1,1000
         IF(B(I).NE.1000) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = B(',I,')'
            CODE = 1
            GO TO 50
         ENDIF
   40 CONTINUE
C
   50 CONTINUE
      ERROR=ERROR+CODE
      END SUBROUTINE TEST211


C
      SUBROUTINE TEST212(ERROR)
C
      INTEGER A(1000),B(500),CODE,ERROR
      DATA A/1000*0/,B/500*0/
C
      CODE = 0
      DO 10 I=1,1000
         A = A + 1
         IF(I.GT.10) GO TO 20
            B = B + 1
   10 CONTINUE
   20 CONTINUE
C
      DO 30 I=1,1000
         IF(A(I).NE.11) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = A(',I,')'
            CODE = 1
            GO TO 40
         ENDIF
   30 CONTINUE
C
   40 CONTINUE
      DO 50 I=1,500
         IF(B(I).NE.10) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = B(',I,')'
            CODE = 1
            GO TO 60
         ENDIF
   50 CONTINUE
C
   60 CONTINUE
      ERROR=ERROR+CODE
      END SUBROUTINE TEST212
C
C
      SUBROUTINE TEST213(ERROR)
C
      INTEGER A(1000),CODE,ERROR
      DATA A/1000*0/
C
      CODE=0
      N = 500
      DO 10 I=1,4
         A(1:N) = A(1:N) + 1
   10 CONTINUE
C
      DO 20 I=1,500
         IF(A(I).NE.4) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = A(',I,')'
            CODE = 1
            GO TO 30
         ENDIF
         IF(A(I+500).NE.0) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = A(',I+500,')'
            CODE = 1
            GO TO 30
         ENDIF
   20 CONTINUE
C
   30 CONTINUE
      ERROR=ERROR+CODE
      END SUBROUTINE TEST213
C
      SUBROUTINE TEST214(ERROR)
C
      INTEGER A(1000),B(500),C(100),CODE,ERROR
      DATA A/1000*0/,B/500*0/,C/100*0/
C
      CODE = 0
      DO 10 I=1,1000
         A(1:I) = A(1:I) + 1
         B = B + 1
         C = C + 1
   10 CONTINUE
C
      DO 20 I=1,1000
         IF(A(I).NE.1001-I) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = A(',I,')'
            CODE = 1
            GO TO 30
         ENDIF
   20 CONTINUE
C
   30 CONTINUE
      DO 40 I=1,500
         IF(B(I).NE.1000) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = B(',I,')'
            CODE = 1
            GO TO 50
         ENDIF
   40 CONTINUE
C
   50 CONTINUE
      DO 60 I=1,100
         IF(C(I).NE.1000) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = C(',I,')'
            CODE = 1
            GO TO 70
         ENDIF
   60 CONTINUE
C
   70 CONTINUE
      ERROR=ERROR+CODE
      END SUBROUTINE TEST214
C
      SUBROUTINE TEST215(ERROR)
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
         CALL SUB8(G+H,I+J,K+L,CODE)
         DO 20 JJ=1,100
            CALL SUB7(A+B,C+D,E+F,CODE)
   20    CONTINUE
         CALL SUB8(G+H,I+J,K+L,CODE)
   10 CONTINUE
C
      ERROR=ERROR+CODE
      END SUBROUTINE TEST215
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
C
      SUBROUTINE SUB8(D,E,F,CODE)
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
