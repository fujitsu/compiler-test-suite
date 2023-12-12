C
      INTEGER*4 ERROR
      DATA ERROR/0/

         CALL TEST122(ERROR)
         CALL TEST123(ERROR)
         CALL TEST124(ERROR)
         CALL TEST125(ERROR)
         CALL TEST126(ERROR)
         CALL TEST127(ERROR)
      IF(ERROR .EQ. 0) THEN
        WRITE(6,*) 'OK'
      ELSE
        WRITE(6,*) 'NG'
      ENDIF

      STOP
      END

C
      SUBROUTINE TEST122(ERROR)
C
      INTEGER A(1000),B(1000),C(1000),D(1000),E(100),CODE,ERROR
      DATA A/1000*0/,B/1000*1/,C/1000*1/,D/1000*1/,E/100*0/
C
      CODE = 0
      E = E + 1
      A = A + 1
      CALL SUB1(B+C,C+D,CODE)
C
      DO 10 I=1,100
         IF(E(I).NE.1) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = E(',I,')'
            CODE = 1
            GO TO 20
         ENDIF
   10 CONTINUE
C
   20 CONTINUE
      DO 30 I=1,1000
         IF(A(I).NE.1) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = A(',I,')'
            CODE = 1
            GO TO 40
         ENDIF
   30 CONTINUE
C
   40 CONTINUE
C
      ERROR=ERROR+CODE
      END SUBROUTINE TEST122
C
C
      SUBROUTINE SUB1(B,C,CODE)
      INTEGER B(1000),C(1000),CODE
C
      DO 10 I=1,1000
         IF(B(I).NE.2) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = B(',I,')'
            CODE = 1
            GO TO 20
         ENDIF
   10 CONTINUE
C
   20 CONTINUE
      DO 30 I=1,1000
         IF(C(I).NE.2) THEN
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
      SUBROUTINE TEST123(ERROR)
C
      INTEGER A(1000),B(1000),CODE,ERROR
      REAL*8  C(1000),D(1000),I(1000),J(1000)
      REAL*8  E(1000),F(1000),G(1000),H(1000)
      DATA A/1000*0/,B/1000*0/,C/1000*1.0/,D/1000*1.0/,E/1000*2.0/
      DATA F/1000*2.0/,G/1000*3.0/,H/1000*3.0/,I/1000*4.0/,J/1000*4.0/
C
      CODE = 0
      CALL SUB2(A+B,C+D,E+F,CODE)
      CALL SUB3(G+H,I+J,CODE)
C
      ERROR=ERROR+CODE
      END SUBROUTINE
C
C
      SUBROUTINE SUB2(A,B,C,CODE)
      INTEGER A(1000),CODE
      REAL*8  B(1000)
      REAL*8  C(1000)
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
      SUBROUTINE SUB3(D,E,CODE)
      INTEGER CODE
      REAL*8  D(1000)
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


C
      SUBROUTINE TEST124(ERROR)
C
      INTEGER A(1000),B(1000),CODE,ERROR
      DATA A/1000*0/,B/1000*0/
C
      CODE = 0
      N = 1000
      DO 10 I=1,1
      A(1:N) = A(1:N) + 1
      B(1:N) = B(1:N) + 1
   10 CONTINUE
C
      DO 20 I=1,1000
         IF(A(I).NE.1) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = A(',I,')'
            CODE = 1
            GO TO 30
         ENDIF
   20 CONTINUE
C
   30 CONTINUE
      DO 40 I=1,1000
         IF(B(I).NE.1) THEN
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
      END SUBROUTINE TEST124


C
      SUBROUTINE TEST125(ERROR)
C
      INTEGER A(100),B(100),C(500),D(500),CODE,ERROR
      REAL*8  E(100),F(100),G(500),H(500)
      REAL*8  I(100),J(100),K(500),L(500)
      DATA A/100*0/,B/100*0/,C/500*0/,D/500*0/
      DATA E/100*0.0/,F/100*0.0/,G/500*0.0/,H/500*0.0/
      DATA I/100*0.0/,J/100*0.0/,K/500*0.0/,L/500*0.0/
C
      CODE = 0
      A = A + 1
      B = B + 1
      DO 10 II=1,10
         C = C + 1
         D = D + 1
         G = G + 1
         DO 20 JJ=1,10
            E = E + 1
            F = F + 1
            I = I + 1
   20    CONTINUE
         H = H + 1
         J = J + 1
         K = K + 1
   10 CONTINUE
      L = L + 1
C
      DO 30 K1=1,100
         IF(A(K1).NE.1) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = A(',K1,')'
            CODE = 1
            GO TO 40
         ENDIF
   30 CONTINUE
C
   40 CONTINUE
      DO 50 K1=1,100
         IF(B(K1).NE.1) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = B(',K1,')'
            CODE = 1
            GO TO 60
         ENDIF
   50 CONTINUE
C
   60 CONTINUE
      DO 70 K1=1,500
         IF(C(K1).NE.10) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = C(',K1,')'
            CODE = 1
            GO TO 80
         ENDIF
   70 CONTINUE
C
   80 CONTINUE
      DO 90 K1=1,500
         IF(D(K1).NE.10) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = D(',K1,')'
            CODE = 1
            GO TO 100
         ENDIF
   90 CONTINUE
C
  100 CONTINUE
      DO 110 K1=1,100
         IF(E(K1).NE.100.0) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = E(',K1,')'
            CODE = 1
            GO TO 120
         ENDIF
  110 CONTINUE
C
  120 CONTINUE
      DO 130 K1=1,100
         IF(F(K1).NE.100.0) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = F(',K1,')'
            CODE = 1
            GO TO 140
         ENDIF
  130 CONTINUE
C
  140 CONTINUE
      DO 150 K1=1,500
         IF(G(K1).NE.10.0) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = G(',K1,')'
            CODE = 1
            GO TO 160
         ENDIF
  150 CONTINUE
C
  160 CONTINUE
      DO 170 K1=1,500
         IF(H(K1).NE.10.0) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = H(',K1,')'
            CODE = 1
            GO TO 180
         ENDIF
  170 CONTINUE
C
  180 CONTINUE
      DO 190 K1=1,100
         IF(I(K1).NE.100.0) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = I(',K1,')'
            CODE = 1
            GO TO 200
         ENDIF
  190 CONTINUE
C
  200 CONTINUE
      DO 210 K1=1,100
         IF(J(K1).NE.10.0) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = J(',K1,')'
            CODE = 1
            GO TO 220
         ENDIF
  210 CONTINUE
C
  220 CONTINUE
      DO 230 K1=1,500
         IF(K(K1).NE.10.0) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = K(',K1,')'
            CODE = 1
            GO TO 240
         ENDIF
  230 CONTINUE
C
  240 CONTINUE
      DO 250 K1=1,500
         IF(L(K1).NE.1.0) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = L(',K1,')'
            CODE = 1
            GO TO 260
         ENDIF
  250 CONTINUE
C
  260 CONTINUE
      ERROR=ERROR+CODE
      END SUBROUTINE TEST125
C
      SUBROUTINE TEST126(ERROR)
C
      INTEGER A(100),CODE,ERROR
      REAL*8  B(50)
      DATA    A/100*0/,B/50*0.0/
C
      CODE = 0
      A = A + 1
      B = B + 1.0
C
      DO 10 I=1,100
         IF(A(I).NE.1) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = A(',I,')'
            CODE = 1
            GO TO 20
         ENDIF
   10 CONTINUE
C
   20 CONTINUE
      DO 30 I=1,50
         IF(B(I).NE.1.0) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = B(',I,')'
            CODE = 1
            GO TO 40
         ENDIF
   30 CONTINUE
C
   40 CONTINUE
      ERROR=ERROR+CODE
      END SUBROUTINE TEST126
C
       SUBROUTINE TEST127(ERROR)
C
      INTEGER CODE,ERROR
C
      CODE = 0
      CALL SUB4(1000,500,100,CODE)
C
      ERROR=ERROR+CODE
      END SUBROUTINE
C
      SUBROUTINE SUB4(N,NN,NNN,CODE)
      INTEGER CODE
      INTEGER,ALLOCATABLE::A(:),B(:),C(:)
C
      ALLOCATE(A(1:N))
      ALLOCATE(B(1:N))
      ALLOCATE(C(1:N))
C
      A(1:N) = 0
      B(1:N) = 0
      C(1:N) = 0
C
      A(1:N) = A(1:N) + 1
      N = NN
      B(1:N) = B(1:N) + 1
      N = NNN
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
      DO 30 I=1,500
         IF(B(I).NE.1) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = B(',I,')'
            CODE = 1
            GO TO 40
         ENDIF
         IF(B(I+500).NE.0) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = B(',I+500,')'
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
      DO 70 I=101,1000
         IF(C(I).NE.0) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = C(',I,')'
            CODE = 1
            GO TO 60
         ENDIF
   70 CONTINUE
C
   60 CONTINUE
      RETURN
      END
