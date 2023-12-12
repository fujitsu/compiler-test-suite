      INTEGER A(100),B(100),E(100),F(100),L(100),M(100)
      INTEGER C(500),D(500),G(200),H(200),N(300),O(300)
      INTEGER J(10),K(10),CODE
      DATA A/100*1/,B/100*1/,E/100*1/,F/100*1/,L/100*1/,M/100*1/
      DATA C/500*1/,D/500*1/,G/200*1/,H/200*1/,N/300*1/,O/300*1/
      DATA J/10*1/,K/10*1/
C
      CODE = 0
      DO 10 I=1,10
         CALL SUB1(A+B,C+D,CODE)
         I1=I
         CALL SUB2(E+F,G+H,J(1:I)+K(1:I),CODE,I1)
         CALL SUB3(L+M,N+O,CODE)
   10 CONTINUE
C
      IF(CODE.EQ.0) WRITE(6,*) 'OK'
C
      STOP
      END
C
C
      SUBROUTINE SUB1(A,B,CODE)
      INTEGER A(100),B(500),CODE
C
      DO 10 I=1,100
         IF(A(I).NE.2) THEN
            IF(.NOT.BTEST(CODE,0)) THEN
               WRITE(6,*) 'NG'
               WRITE(6,*) 'ELEMENT NUMBER = A(',I,')'
               CODE=IBSET(CODE,0)
            ENDIF
            GO TO 20
         ENDIF
   10 CONTINUE
C
   20 CONTINUE
      DO 30 I=1,500
         IF(B(I).NE.2) THEN
            IF(.NOT.BTEST(CODE,1)) THEN
               WRITE(6,*) 'NG'
               WRITE(6,*) 'ELEMENT NUMBER = B(',I,')'
               CODE=IBSET(CODE,1)
            ENDIF
            GO TO 40
         ENDIF
   30 CONTINUE
C
   40 CONTINUE
      RETURN
      END
C
      SUBROUTINE SUB2(C,D,E,CODE,II)
      INTEGER C(100),D(200),E(II),CODE
C
      DO 10 I=1,100
         IF(C(I).NE.2) THEN
            IF(.NOT.BTEST(CODE,2)) THEN
               WRITE(6,*) 'NG'
               WRITE(6,*) 'ELEMENT NUMBER = C(',I,')'
               CODE=IBSET(CODE,2)
            ENDIF
            GO TO 20
         ENDIF
   10 CONTINUE
C
   20 CONTINUE
      DO 30 I=1,200
         IF(D(I).NE.2) THEN
            IF(.NOT.BTEST(CODE,3)) THEN
               WRITE(6,*) 'NG'
               WRITE(6,*) 'ELEMENT NUMBER = D(',I,')'
               CODE=IBSET(CODE,3)
            ENDIF
            GO TO 40
         ENDIF
   30 CONTINUE
C
   40 CONTINUE
      DO 50 I=1,II
         IF(E(I).NE.2) THEN
            IF(.NOT.BTEST(CODE,4)) THEN
               WRITE(6,*) 'NG'
               WRITE(6,*) 'ELEMENT NUMBER = E(',I,')'
               CODE=IBSET(CODE,4)
            ENDIF
            GO TO 60
         ENDIF
   50 CONTINUE
C
   60 CONTINUE
      RETURN
      END
C
      SUBROUTINE SUB3(F,G,CODE)
      INTEGER F(100),G(300),CODE
C
      DO 10 I=1,100
         IF(F(I).NE.2) THEN
            IF(.NOT.BTEST(CODE,5)) THEN
               WRITE(6,*) 'NG'
               WRITE(6,*) 'ELEMENT NUMBER = F(',I,')'
               CODE=IBSET(CODE,5)
            ENDIF
            GO TO 20
         ENDIF
   10 CONTINUE
C
   20 CONTINUE
      DO 30 I=1,300
         IF(G(I).NE.2) THEN
            IF(.NOT.BTEST(CODE,6)) THEN
               WRITE(6,*) 'NG'
               WRITE(6,*) 'ELEMENT NUMBER = G(',I,')'
               CODE=IBSET(CODE,6)
            ENDIF
            GO TO 40
         ENDIF
   30 CONTINUE
C
   40 CONTINUE
      RETURN
      END
