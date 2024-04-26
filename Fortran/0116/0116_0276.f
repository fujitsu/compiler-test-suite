
      PROGRAM MAIN
      INTEGER ERROR
      DATA ERROR/0/

         CALL TEST(ERROR)
      IF(ERROR .EQ. 0) THEN
         WRITE(6,*) '***  OK !! ***'
      ELSE
         WRITE(6,*) '***  NG ?? ***'
      ENDIF

      STOP
      END


      SUBROUTINE TEST(ERROR)

      INTEGER A(1000),B(1000),C(1000),D(1000),CODE,ERROR
      REAL*8  E(100),F(100),G(100),H(100)
      REAL*8  I(100),J(100),K(100),L(100)
      DATA A/1000*1/,B/1000*1/,C/1000*1/,D/1000*1/
      DATA E/100*1.0/,F/100*1.0/,G/100*1.0/,H/100*1.0/
      DATA I/100*1.0/,J/100*1.0/,K/100*1.0/,L/100*1.0/

      CODE = 0
      DO 10 II=1,10
      DO 101 III=1,2
            GO TO 201
 101     CONTINUE

 201     CONTINUE
      DO 301 III=1,10
         IF(B(III).NE.2) THEN
            GO TO 401
         ENDIF
 301  CONTINUE

 401  CONTINUE


      DO 20 JJ=1,100
         call hhhh(E+F,G+H)
 20   CONTINUE
      call hhhh(I+J,K+L)

 10   CONTINUE

      ERROR=ERROR+CODE
      END SUBROUTINE TEST



      subroutine hhhh(C,D)
      REAL*8 C(100),D(100)

      RETURN
      end subroutine hhhh
