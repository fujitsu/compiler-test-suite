      INTEGER ERROR
      DATA ERROR/0/

         CALL TEST115(ERROR)
         CALL TEST116(ERROR)
         CALL TEST117(ERROR)
         CALL TEST118(ERROR)
         CALL TEST119(ERROR)
         CALL TEST120(ERROR)
         CALL TEST121(ERROR)
	 IF(ERROR .EQ.0) THEN
	   WRITE(6,*) 'OK'
         ELSE
	   WRITE(6,*) 'NG'
	 ENDIF           

      STOP
      END

C
      SUBROUTINE TEST115(ERROR)
C
      INTEGER A(1000),B(1000),C(1000),CODE,ERROR
      DATA A/1000*1/,B/1000*1/,C/1000*1/
C
      CODE = 0
      CALL SUB1(A+B,A+C,B+C,CODE)
C
      ERROR=ERROR+CODE
      END SUBROUTINE TEST115
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
      SUBROUTINE TEST116(ERROR)
C
      INTEGER A(1000),B(1000),G(100),H(100),CODE,ERROR
      REAL*8  C(1000),D(1000),E(500),F(500)
      REAL*8  I(1000),J(1000),K(300),L(300)
      DATA A/1000*1/,B/1000*1/,G/100*1/,H/100*1/
      DATA C/1000*2.0/,D/1000*2.0/,E/500*2.0/,F/500*2.0/
      DATA I/1000*3.0/,J/1000*3.0/,K/300*3.0/,L/300*3.0/
C
      CODE = 0
      CALL SUB2(A+B,C+D,E+F,CODE)
      CALL SUB3(G+H,I+J,K+L,CODE)
C
      ERROR=ERROR+CODE
      END SUBROUTINE TEST116
C
C
      SUBROUTINE SUB2(A,B,C,CODE)
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
      SUBROUTINE SUB3(D,E,F,CODE)
      INTEGER D(100),CODE
      REAL*8  E(1000),F(300)
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


C
      SUBROUTINE TEST117(ERROR)
C
      INTEGER A(1000),B(1000),C(500),D(500),E(100),F(100),CODE,ERROR
      INTEGER G(1000),H(1000),I(500),J(500),K(100),L(100)
      INTEGER M(1000),N(1000),O(500),P(500),Q(100),R(100)
      DATA A/1000*1/,B/1000*1/,C/500*2/,D/500*2/,E/100*0/,F/100*0/
      DATA G/1000*1/,H/1000*1/,I/500*2/,J/500*2/,K/100*0/,L/100*0/
      DATA M/1000*1/,N/1000*1/,O/500*2/,P/500*2/,Q/100*0/,R/100*0/
C
      CODE = 0
      CALL SUB4(A+B,C+D,E+F,CODE)
      CALL SUB5(G+H,I+J,K+L,CODE)
      CALL SUB6(M+N,O+P,Q+R,CODE)
C
      ERROR=ERROR+CODE
      END SUBROUTINE TEST117
C
C
      SUBROUTINE SUB4(A,B,C,CODE)
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
      SUBROUTINE SUB5(D,E,F,CODE)
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
      SUBROUTINE SUB6(G,H,I,CODE)
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

C
      SUBROUTINE TEST118(ERROR)
C
      INTEGER A(1000),B(100),C(100),D(100),E(100),F(100),G(100),CODE
     +       ,ERROR
      DATA A/1000*0/,B/100*0/,C/100*1/,D/100*1/,E/100*1/
      DATA F/100*1/,G/100*0/
C
      CODE = 0
      A = A + 1
      B = B + 1
      CALL SUB7(C+D,E+F,CODE)
      G = G + 1
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
      DO 30 I=1,100
         IF(B(I).NE.1) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = B(',I,')'
            CODE = 1
            GO TO 40
         ENDIF
   30 CONTINUE
C
   40 CONTINUE
      DO 50 I=1,100
         IF(G(I).NE.1) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = G(',I,')'
            CODE = 1
            GO TO 60
         ENDIF
   50 CONTINUE
C

   60 CONTINUE
      ERROR=ERROR+CODE
      END SUBROUTINE TEST118
C
C
      SUBROUTINE SUB7(C,D,CODE)
      INTEGER C(100),D(100),CODE
C
      DO 10 I=1,100
         IF(C(I).NE.2) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = C(',I,')'
            CODE = 1
            GO TO 20
         ENDIF
   10 CONTINUE
C
   20 CONTINUE
      DO 30 I=1,100
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
      SUBROUTINE TEST119(ERROR)
C
      INTEGER A(1000),B(100),C(100),D(1000),CODE,ERROR
      DATA A/1000*0/,B/100*0/,C/100*0/,D/1000*0/
C
      CODE = 0
      A = A + 1
      B = B + 1
      C = C + 1
      D = D + 1
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
      DO 30 I=1,100
         IF(B(I).NE.1) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = B(',I,')'
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
C
   60 CONTINUE
      DO 70 I=1,1000
         IF(D(I).NE.1) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = D(',I,')'
            CODE = 1
            GO TO 80
         ENDIF
   70 CONTINUE
C
   80 CONTINUE
      ERROR=ERROR+CODE
      END SUBROUTINE TEST119


C
      SUBROUTINE TEST120(ERROR)
C
      INTEGER A(1000),B(1000),C(1000),D(1000),CODE,ERROR
      DATA A/1000*0/,B/1000*0/,C/1000*0/,D/1000*0/
C
      N=1000
      CODE = 0
      CALL SUB8(A,B,C,D,N)
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
      DO 70 I=1,1000
         IF(D(I).NE.1) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = D(',I,')'
            CODE = 1
            GO TO 80
         ENDIF
   70 CONTINUE
C
   80 CONTINUE
      ERROR=ERROR+CODE
      END SUBROUTINE TEST120
C
      SUBROUTINE SUB8(A,B,C,D,N)
      INTEGER A(N),B(N),C(N),D(N)
C
      A = A + 1
      B = B + 1
      C = C + 1
      D = D + 1
C
      RETURN
      END


      SUBROUTINE TEST121(ERROR)
C
      INTEGER A(1000),B(1000),CODE,ERROR
      DATA A/1000*0/,B/1000*0/
C
      CODE = 0
      DO 10 I=1,1000
         A(1:I) = A(1:I) + 1
         B(1:I) = B(1:I) + 1
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
      DO 40 I=1,1000
         IF(B(I).NE.1001-I) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = B(',I,')'
            CODE = 1
            GO TO 50
         ENDIF
   40 CONTINUE
C
   50 CONTINUE
      ERROR=ERROR+CODE
      END SUBROUTINE TEST121
