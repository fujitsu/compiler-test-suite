      DIMENSION B(5),C(2,3),D(2,2,2),E(3),A(20),T(20)
      DOUBLE PRECISION A,B,C,D,E,T,F,G,DIF
      COMMON C
      EQUIVALENCE (F,G),(G,B(2)),(B(2),C(1,3)),(C(1,3),D(1,2,1))
      EQUIVALENCE (E(2),B(5))
  102 FORMAT(1H0,12X,7H*ERROR*,7X,2H( I2,2H )7X,D24.17,7X,D24.17,7X,
     *D24.17)
  103 FORMAT(1H0,12X,4H*OK*10X,2H( I2,2H )7X,D24.17,7X,D24.17,7X,
     *D24.17)

      C(1,1)=123.45D6
      C(2,2)=-678.88D8
      F     =0.1234567D70
      B(4)  =9.999999999999999
      D(1,2,2)=0.345678D-60
      C(2,1)=0.0D0
      CALL SUB
      A( 1)=C(1,1)
      T( 1)=123.45D6
      A( 2)=D(1,1,1)
      T( 2)=-3.4578D4
      A( 3)=B(1)
      T( 3)=-678.88D8
      A( 4)=D(2,1,1)
      T( 4)=-678.88D8
      A( 5)=G
      T( 5)=0.1234567D70
      A( 6)=B(2)
      T( 6)=0.1234567D70
      A( 7)=C(1,3)
      T( 7)=0.1234567D70
      A( 8)=D(1,2,1)
      T( 8)=0.1234567D70
      A( 9)=B(3)
      T( 9)=1.9747D-60
      A(10)=D(2,2,1)
      T(10)=1.9747D-60
      A(11)=E(1)
      T(11)=9.999999999999999
      A(12)=D(1,1,2)
      T(12)=9.999999999999999
      A(13)=E(2)
      T(13)=3.42189D60
      A(14)=D(2,1,2)
      T(14)=3.42189D60
      A(15)=E(3)
      T(15)=0.345678D-60
      A(16)=C(2,2)
      T(16)=-678.88D8
      A(17)=D(2,2,2)
      T(17)=4.91491491D1
      A(18)=C(1,2)
      T(18)=-3.4578D4
      A(19)=C(2,3)
      T(19)=1.9747D-60
      A(20)=B(5)
      T(20)=3.42189D60
      DO 10 I=1,20
      DIF=A(I)-T(I)
      IF(T(I))1,2,1
    1 IF(DABS(DIF)-1.0D-15*DABS(T(I)))700,701,701
    2 IF(DABS(DIF)-1.0D-15)700,701,701
  700 CONTINUE
C
      GO TO 10
  701 WRITE(6,102)I,A(I),T(I),DIF
   10 CONTINUE
      CALL SUB1
      STOP
      END
      SUBROUTINE SUB
      DOUBLE PRECISION A
      DIMENSION A(10)
      COMMON A
      A(3)=-3.4578D4
      A(6)=1.9747D-60
      A(8)=3.42189D60
      A(10)=4.91491491D1
      RETURN
      END
      SUBROUTINE SUB1
      DIMENSION A(30),T(30)
      DOUBLE PRECISION A,T,DIF
      COMMON A
      T(21)=123.45D6
      T(22)=0.0D0
      T(23)=-3.4578D4
      T(24)=-678.88D8
      T(25)=0.1234567D70
      T(26)=1.9747D-60
      T(27)=9.999999999999999
      T(28)=3.42189D60
      T(29)=0.345678D-60
      T(30)=4.91491491D1
      I=21
      N=29
  699 DO 10 I=I,N
      DIF =A(I-20)-T(I)
      IF(T(I))1,2,1
    1 IF(DABS(DIF)-1.0D-15*DABS(T(I)))700,701,701
    2 IF(DABS(DIF)-1.0D-15)700,701,701
  700 CONTINUE
C
      GO TO 10
  701 WRITE(6,102)I,A(I-20),T(I),DIF
   10 CONTINUE
  101 FORMAT(1H0 // 10X,44H- JUSTICE -     - ITEM -          - COMPUTED
     *9H RESULT -13X,17H- COMPARE VALUE -15X,14H- DIFFERENCE -/)
  102 FORMAT(1H0,12X,7H*ERROR*,7X,2H( I2,2H )7X,D24.17,7X,D24.17,7X,
     *D24.17)
  103 FORMAT(1H0,12X,4H*OK*10X,2H( I2,2H )7X,D24.17,7X,D24.17,7X,
     *D24.17)
      IF(N-29)3,4,3
    4 CONTINUE
C
      I=30
      N=30
      GO TO 699
    3 RETURN
      END
