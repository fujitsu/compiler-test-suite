      COMMON  P,Q,R(3),X(2,2,2),Y1,Y2(2,2,2),Z1,Z2,Z3(2,2)
      DOUBLE PRECISION A(30),B(30),P,Q,R,X,Y1,Y2,Z1,Z2,Z3
      WRITE(6,101)
  101 FORMAT(1H0 // 10X,44H- JUSTICE -     - ITEM -          - COMPUTED
     *9H RESULT -13X,17H- COMPARE VALUE -15X,14H- DIFFERENCE -/)
  999 FORMAT(1H0/2X,27H*FORTRAN*              EXIT)
      Z1 =0.1987497D10
      Z3(2,2)=-97654.99D60
      R(3)   =0.4567891011D-59
      Y2(1,1,1)=7.777777777777
      Y2(1,2,1)=6.666666666666
      Q        =1.98765432D1
      Y2(2,2,2)=0.0D0
      CALL SUB1
      A(14)=P
      B(14)=0.1234567891011
      A(15)=R(1)
      B(15)=-99.99D-4
      A(16)=X(1,1,1)
      B(16)=6.9876D10
      A(17)=X(1,1,2)
      B(17)=0.0D0
      A(18)=Y1
      B(18)=327672.7689D19
      A(19)=Y2(2,2,1)
      B(19)=-12345678.9D10
      A(20)=Z2
      B(20)=6.78910111213
      A(21)=Z3(2,1)
      B(21)=-687.68712135D2
      A(22)=Z3(1,1)
      B(22)=2.222D2
      A(23)=Z1
      B(23)=0.1987497D10
      I=14
      N=23
      CALL SUB3(I,N,A,B)
      WRITE (6,999)
      STOP
      END
      SUBROUTINE SUB1
      COMMON  TT(22),S(6),W(3,3)
      DIMENSION A(30),B(30)
      DOUBLE PRECISION A,B,TT,S,W
      TT(1)=0.1234567891011
      TT(3)=-99.99D-4
      TT(6)=6.9876D10
      TT(10)= 0.0D0
      W(3,1)=1.9789D-60
      S(3) =2.222D2
      S(1) =0.1987497D10
      CALL SUB2
      A( 7)=S(2)
      B( 7)=6.78910111213
      A( 8)=S(4)
      B( 8)=-687.68712135D2
      A( 9)=TT(2)
      B( 9)=1.98765432D1
      A(10)=TT(5)
      B(10)=0.4567891011D-59
      A(11)=S(6)
      B(11)=-97654.99D60
      A(12)=S(1)
      B(12)=0.1987497D10
      A(13)=W(2,3)
      B(13)=9.78654321234
      I=7
      N=13
      CALL SUB3(I,N,A,B)
      RETURN
      END
      SUBROUTINE SUB2
      DOUBLE PRECISION   A,B,XX,SS,SP,DB,BB
      COMMON  BB(13),XX(9),SP(6),SS(9)
      DIMENSION A(30),B(30)
      XX(1)=327672.7689D19
      XX(5)=-12345678.9D10
      SS(2)=0.0D0
      SS(8)=9.78654321234
      SP(2)=6.78910111213
      SP(4)=-687.68712135D2
      A( 1)=SP(1)
      B( 1)=0.1987497D10
      A( 2)=SP(6)
      B( 2)=-97654.99D60
      A( 3)=SS(3)
      B( 3)=1.9789D-60
      A( 4)=XX(2)
      B( 4)=7.777777777777
      A( 5)=XX(4)
      B( 5)=6.666666666666
      A( 6)=XX(9)
      B( 6)=0.0D0
      I=1
      N=6
      CALL SUB3(I,N,A,B)
      RETURN
      END
      SUBROUTINE SUB3(I,N,A,B)
      DOUBLE PRECISION A(30),B(30),DIF
      DO 10 I=I,N
      DIF =A(I)-B(I)
      IF(B(I))1,2,1
    1 IF(DABS(DIF)-1.0D-15*DABS(B(I)))700,701,701
    2 IF(DABS(DIF)-1.0D-15)700,701,701
  102 FORMAT(1H0,12X,7H*ERROR*,7X,2H( I2,2H )7X,D24.17,7X,D24.17,7X,
     *D24.17)
  103 FORMAT(1H0,12X,4H*OK*10X,2H( I2,2H )7X,D24.17,7X,D24.17,7X,
     *D24.17)
  700 WRITE(6,103)I,A(I),B(I),DIF
      GO TO 10
  701 WRITE(6,102)I,A(I),B(I),DIF
   10 CONTINUE
      RETURN
      END
