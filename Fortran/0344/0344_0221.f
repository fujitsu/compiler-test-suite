      INTEGER A(100)/100*0/,B(100)/100*1/
      INTEGER C(100)/100*0/,D(100)/100*0/
      INTEGER E(10)/10*1/,F(10)/10*2/
      INTEGER G(10)/10*3/,H(10)/10*4/
      integer fun1
C
      DO 1 I=1,10
        N = I * 10
   1  CONTINUE
C
      DO 10 I=1,N
        A(I) = B(I) + I
        CALL SUB01(C(I),15)
        D(I) = C(I) + A(I)
   10 CONTINUE
      WRITE(6,*) D
C
      DO 20 I=1,10
   20   N = I - 2
C
      write(6,*) ' test 2 start '
      DO 30 I=1,N
        E(I) = F(I) + I
        H(I) = FUN1(G(I)) + E(I)
   30 CONTINUE
      WRITE(6,*) H
      write(6,*) ' test 3 start '
C
      JJ = 1
      DO 40 I=1,N
        CALL SUB01(E(JJ),N)
        CALL SUB02(F(JJ),N)
        G(JJ) = E(JJ) + F(JJ)
   40 CONTINUE
      WRITE(6,*) G
C
      STOP
      END
C
      SUBROUTINE SUB01(F,M)
      INTEGER F
      DO 20 I=1,(M*2)/5
        F = I ** 2
  20  CONTINUE
      RETURN
      END
C
      SUBROUTINE SUB02(FF,M)
      INTEGER FF,AA(10)/10*10/
      DO 20 I=1,M
        AA(I) = I + 2
        CALL SUB01(AA(I),M/2)
        FF = AA(I) / 2
  20  CONTINUE
      RETURN
      END
C
      INTEGER FUNCTION FUN1(X)
      INTEGER X
      DO 40 I=1,100
        FUN1 = I + X
  40  CONTINUE
      RETURN
      END












