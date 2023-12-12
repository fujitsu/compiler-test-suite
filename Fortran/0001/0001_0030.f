      INTEGER A(100),B(100),C(500),D(500),CODE
      REAL*8  E(100),F(100),G(500),H(500)
      REAL*4  I(100),J(100),K(500),L(500)
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
      IF(CODE.EQ.0) WRITE(6,*) 'OK'
C
  260 CONTINUE
      STOP
      END
