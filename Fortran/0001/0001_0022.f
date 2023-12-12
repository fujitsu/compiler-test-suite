      INTEGER A(1000),B(1000),C(500),D(500),E(100),F(100),CODE
      INTEGER G(1000),H(1000),I(500),J(500),K(100),L(100)
      INTEGER M(1000),N(1000),O(500),P(500),Q(100),R(100)
      DATA A/1000*1/,B/1000*1/,C/500*2/,D/500*2/,E/100*0/,F/100*0/
      DATA G/1000*1/,H/1000*1/,I/500*2/,J/500*2/,K/100*0/,L/100*0/
      DATA M/1000*1/,N/1000*1/,O/500*2/,P/500*2/,Q/100*0/,R/100*0/
C
      CODE = 0
      CALL SUB1(A+B,C+D,E+F,CODE)
      CALL SUB2(G+H,I+J,K+L,CODE)
      CALL SUB3(M+N,O+P,Q+R,CODE)
C
      IF(CODE.EQ.0) WRITE(6,*) 'OK'
C
      STOP
      END
C
C
      SUBROUTINE SUB1(A,B,C,CODE)
      INTEGER A(1000),B(500),C(100),CODE
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
      DO 30 I=1,500
         IF(B(I).NE.4) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = B(',I,')'
            CODE = 1
            GO TO 40
         ENDIF
   30 CONTINUE
C
   40 CONTINUE
      DO 50 I=1,100
         IF(C(I).NE.0) THEN
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
      INTEGER D(1000),E(500),F(100),CODE
C
      DO 10 I=1,1000
         IF(D(I).NE.2) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = D(',I,')'
            CODE = 1
            GO TO 20
         ENDIF
   10 CONTINUE
C
   20 CONTINUE
      DO 30 I=1,500
         IF(E(I).NE.4) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = E(',I,')'
            CODE = 1
            GO TO 40
         ENDIF
   30 CONTINUE
C
   40 CONTINUE
      DO 50 I=1,100
         IF(F(I).NE.0) THEN
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
      INTEGER G(1000),H(500),I(100),CODE
C
      DO 10 K=1,1000
         IF(G(K).NE.2) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = G(',K,')'
            CODE = 1
            GO TO 20
         ENDIF
   10 CONTINUE
C
   20 CONTINUE
      DO 30 K=1,500
         IF(H(K).NE.4) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = H(',K,')'
            CODE = 1
            GO TO 40
         ENDIF
   30 CONTINUE
C
   40 CONTINUE
      DO 50 K=1,100
         IF(I(K).NE.0) THEN
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
