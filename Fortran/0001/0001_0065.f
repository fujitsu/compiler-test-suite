      INTEGER ERROR
      DATA ERROR/0/

         CALL TEST216(ERROR)
         CALL TEST217(ERROR)
         CALL TEST218(ERROR)
         CALL TEST219(ERROR)
         CALL TEST220(ERROR)
         CALL TEST221(ERROR)
         CALL TEST222(ERROR)
      IF(ERROR .EQ. 0) THEN
        WRITE(6,*) 'OK'
      ELSE
        WRITE(6,*) 'NG'
      ENDIF

      STOP
      END
C
C
      SUBROUTINE TEST216(ERROR)
C
      INTEGER A(1000),B(1000),C(100),D(100),CODE,ERROR
      DATA A/1000*1/,B/1000*1/,C/100*1/,D/100*1/
C
      CODE = 0
      DO 10 I=1,100
         J=I
         CALL SUB1(A+B,C(1:I)+D(1:I),CODE,J)
   10 CONTINUE
C
      ERROR=ERROR+CODE
      END SUBROUTINE TEST216
C
C
      SUBROUTINE SUB1(A,B,CODE,K)
      INTEGER A(1000),B(100),CODE
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
      DO 30 I=1,K
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
      SUBROUTINE TEST217(ERROR)
C
      INTEGER A(1000),B(1000),C(500),D(500),E(100),F(100),CODE,ERROR
      DATA A/1000*1/,B/1000*1/,C/500*1/
      DATA D/500*1/,E/100*1/,F/100*1/
C
      CODE = 0
      DO 10 I=1,100
         J=I
         CALL SUB2(A+B,C+D,E(1:I)+F(1:I),CODE,J)
   10 CONTINUE
C
      ERROR=ERROR+CODE
      END SUBROUTINE TEST217
C
C
      SUBROUTINE SUB2(A,B,C,CODE,K)
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
         IF(B(I).NE.2) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = B(',I,')'
            CODE = 1
            GO TO 40
         ENDIF
   30 CONTINUE
C
   40 CONTINUE
      DO 50 I=1,K
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
      SUBROUTINE TEST218(ERROR)
C
      INTEGER A(100),B(500),C(500),D(1000),E(1000),CODE,ERROR
      DATA A/100*0/,B/500*1/,C/500*1/
      DATA D/1000*1/,E/1000*1/
C
      CODE = 0
      DO 10 I=1,100
         A(1:I) = A(1:I) + 1
         J=I
         CALL SUB3(B+C,D(1:I)+E(1:I),CODE,J)
   10 CONTINUE
C
      DO 20 I=1,100
         IF(A(I).NE.101-I) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = A(',I,')'
            CODE = 1
            GO TO 30
         ENDIF
   20 CONTINUE
C
   30 CONTINUE
C
      ERROR=ERROR+CODE
      END SUBROUTINE TEST218
C
C
      SUBROUTINE SUB3(B,C,CODE,K)
      INTEGER B(500),C(100),CODE
C
      DO 10 I=1,500
         IF(B(I).NE.2) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = B(',I,')'
            CODE = 1
            GO TO 20
         ENDIF
   10 CONTINUE
C
   20 CONTINUE
      DO 30 I=1,K
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
      SUBROUTINE TEST219(ERROR)
C
      INTEGER A(100),B(100),C(500),D(500),CODE,ERROR
      INTEGER E(100),F(100),G(1000),H(1000)
      DATA A/100*1/,B/100*1/,C/500*1/,D/500*1/
      DATA E/100*1/,F/100*1/,G/1000*1/,H/1000*1/
C
      CODE = 0
      DO 10 I=1,100
         CALL SUB4(A+B,C+D,CODE)
         CALL SUB5(E+F,G+H,CODE)
   10 CONTINUE
C
      ERROR=ERROR+CODE
      END SUBROUTINE TEST219
C
C
      SUBROUTINE SUB4(A,B,CODE)
      INTEGER A(100),B(500),CODE
C
      DO 10 I=1,100
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
      INTEGER C(100),D(1000),CODE
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
      SUBROUTINE TEST220(ERROR)
C
      INTEGER A(100),B(100),C(500),D(500),E(10),F(10),CODE,ERROR
      INTEGER G(100),H(100),I(1000),J(1000)
      DATA A/100*1/,B/100*1/,C/500*1/,D/500*1/,E/10*1/,F/10*1/
      DATA G/100*1/,H/100*1/,I/1000*1/,J/1000*1/
C
      CODE = 0
      DO 10 K=1,10
         L=K
         CALL SUB6(A+B,C+D,E(1:K)+F(1:K),CODE,L)
         CALL SUB7(G+H,I+J,CODE)
   10 CONTINUE
C
      ERROR=ERROR+CODE
      END SUBROUTINE TEST220
C
C
      SUBROUTINE SUB6(A,B,C,CODE,M)
      INTEGER A(100),B(500),C(M),CODE
C
      DO 10 I=1,100
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
         IF(B(I).NE.2) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = B(',I,')'
            CODE = 1
            GO TO 40
         ENDIF
   30 CONTINUE
C
   40 CONTINUE
      DO 50 I=1,M
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
      SUBROUTINE SUB7(D,E,CODE)
      INTEGER D(100),E(1000),CODE
C
      DO 10 I=1,100
         IF(D(I).NE.2) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = D(',I,')'
            CODE = 1
            GO TO 20
         ENDIF
   10 CONTINUE
C
   20 CONTINUE
      DO 30 I=1,1000
         IF(E(I).NE.2) THEN
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
      SUBROUTINE TEST221(ERROR)
C
      INTEGER A(100),B(100),C(10),D(10),E(500),CODE,ERROR
      DATA A/100*1/,B/100*1/,C/10*1/,D/10*1/,E/500*1/
C
      CODE = 0
      DO 10 I=1,10
         J=I
         CALL SUB8(A+B,C(1:I)+D(1:I),CODE,J)
         E = E + 1
   10 CONTINUE
C
      DO 20 I=1,500
         IF(E(I).NE.11) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = E(',I,')'
            CODE = 1
            GO TO 30
         ENDIF
   20 CONTINUE
C
   30 CONTINUE
      ERROR=ERROR+CODE
      END SUBROUTINE TEST221
C
C
      SUBROUTINE SUB8(A,B,CODE,K)
      INTEGER A(100),B(K),CODE
C
      DO 10 I=1,100
         IF(A(I).NE.2) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = A(',I,')'
            CODE = 1
            GO TO 20
         ENDIF
   10 CONTINUE
C
   20 CONTINUE
      DO 30 I=1,K
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
      SUBROUTINE TEST222(ERROR)
C
      INTEGER A(100),B(100),E(100),F(100),L(100),M(100)
      INTEGER C(500),D(500),G(200),H(200),N(300),O(300)
      INTEGER J(10),K(10),CODE,ERROR
      DATA A/100*1/,B/100*1/,E/100*1/,F/100*1/,L/100*1/,M/100*1/
      DATA C/500*1/,D/500*1/,G/200*1/,H/200*1/,N/300*1/,O/300*1/
      DATA J/10*1/,K/10*1/
C
      CODE = 0
      DO 10 I=1,10
         CALL SUB9(A+B,C+D,CODE)
         I1=I
         CALL SUBA(E+F,G+H,J(1:I)+K(1:I),CODE,I1)
         CALL SUBB(L+M,N+O,CODE)
   10 CONTINUE
C
      ERROR=ERROR+CODE
      END SUBROUTINE TEST222
C
C
      SUBROUTINE SUB9(A,B,CODE)
      INTEGER A(100),B(500),CODE
C
      DO 10 I=1,100
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
      SUBROUTINE SUBA(C,D,E,CODE,II)
      INTEGER C(100),D(200),E(II),CODE
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
      DO 30 I=1,200
         IF(D(I).NE.2) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = D(',I,')'
            CODE = 1
            GO TO 40
         ENDIF
   30 CONTINUE
C
   40 CONTINUE
      DO 50 I=1,II
         IF(E(I).NE.2) THEN
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
C
      SUBROUTINE SUBB(F,G,CODE)
      INTEGER F(100),G(300),CODE
C
      DO 10 I=1,100
         IF(F(I).NE.2) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = F(',I,')'
            CODE = 1
            GO TO 20
         ENDIF
   10 CONTINUE
C
   20 CONTINUE
      DO 30 I=1,300
         IF(G(I).NE.2) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = G(',I,')'
            CODE = 1
            GO TO 40
         ENDIF
   30 CONTINUE
C
   40 CONTINUE
      RETURN

      END
