      IMPLICIT REAL*8(A,B,G,S,T) 
      COMMON AI,AJ,AK,AL
      LOGICAL LL,LG,L,G
      DIMENSION A(90),B(90),L(50),G(50),LL(25),LG(3,5,2),S(25),T(3,5,2)
  777 FORMAT(1H1)
  102 FORMAT(1H0 12X 7H*ERROR*,7X,2H( ,I2,2H ),14X,L6,20X,L6)
  103 FORMAT(1H0 12X 4H*OK*10X,2H( I2,2H ),14X,L6,20X,L6)
  104 FORMAT(1H0 12X 7H*ERROR* 7X2H( I2,2H )10X,E14.7,13X,E14.7,9XE14.7)
  105 FORMAT(1H0 12X 4H*OK*,10X,2H( I2,2H )10X,E14.7,13X,E14.7,9X,E14.7)


      CALL SUB(LL,3,6)
      L(1)=LL(1)
      G(1)=.TRUE.
      L(2)=LL(6)
      G(2)=.FALSE.
      L(3)=LL(8)
      G(3)=.TRUE.
      L(4)=LL(13)
      G(4)=.FALSE.
      L(5)=LL(18)
      G(5)=.TRUE.
      N =3
      CALL SUB1(LL,2,N,4)
      L(6)=LL(1)
      G(6)=.TRUE.
      L(7)=LL(3)
      G(7)=.FALSE.
      L(8)=LL(7)
      G(8)=.TRUE.
      L(9)=LL(12)
      G(9)=.FALSE.
      L(10)=LL(14)
      G(10)=.TRUE.
      L(11)=LL(19)
      G(11)=.FALSE.
      L(12)=LL(24)
      G(12)=.TRUE.
      CALL SUB2(LG,25)
      L(13)=LG(1,1,1)
      G(13)=.FALSE.
      L(14)=LG(1,2,1)
      G(14)=.TRUE.
      L(15)=LG(3,3,1)
      G(15)=.FALSE.
      L(16)=LG(2,4,1)
      G(16)=.TRUE.
      L(17)=LG(3,5,1)
      G(17)=.FALSE.
      L(18)=LG(1,1,2)
      G(18)=.TRUE.
      L(19)=LG(2,2,2)
      G(19)=.FALSE.
      L(20)=LG(1,3,2)
      G(20)=.TRUE.
      L(21)=LG(1,4,2)
      G(21)=.FALSE.
      CALL SUB(LG,N,6)
      L(22)=LG(1,1,1)
      G(22)=.TRUE.
      L(23)=LG(3,2,1)
      G(23)=.FALSE.
      L(24)=LG(2,3,1)
      G(24)=.TRUE.
      L(25)=LG(1,5,1)
      G(25)=.FALSE.
      L(26)=LG(3,1,2)
      G(26)=.TRUE.
      CALL SUB3(S,3,6)
      A(27)=S(1)
      B(27)=33445531
      A(28)=S(6)
      B(28)=-33445531.0
      A(29)=S(8)
      B(29)=0.0
      A(30)=S(13)
      B(30)=0.3d70
      A(31)=S(18)
      B(31)=0.65d-60
      N =3
      CALL SUB4(S,2,N,4)
      A(32)=S(1)
      B(32)=-33445531d-60
      A(33)=S(3)
      B(33)=33445531d65
      A(34)=S(7)
      B(34)=0E0
      A(35)=S(12)
      B(35)=0.1E30
      A(36)=S(14)
      B(36)=123.456E-19
      A(37)=S(19)
      B(37)=33445531d65
      A(38)=S(24)
      B(38)=3.9E-1
      CALL SUB5(T,25)
      A(39)=T(1,1,1)
      B(39)=6789109d60
      A(40)=T(1,2,1)
      B(40)=-67.0001E-3
      A(41)=T(3,3,1)
      B(41)=0.0
      A(42)=T(2,4,1)
      B(42)=6789109d60
      A(43)=T(3,5,1)
      B(43)=33333333E3
      A(44)=T(1,1,2)
      B(44)=5963596E3
      A(45)=T(2,2,2)
      B(45)=0.1d-60
      A(46)=T(1,3,2)
      B(46)=-693E04
      A(47)=T(1,4,2)
      B(47)=0.0
      CALL SUB3(T,N,6)
      A(48)=T(1,1,1)
      B(48)=33445531
      A(49)=T(3,2,1)
      B(49)=-33445531.0
      A(50)=T(2,3,1)
      B(50)=0.0
      A(51)=T(1,5,1)
      B(51)=0.3d70
      A(52)=T(3,1,2)
      B(52)=0.65d-60
      CALL SUB6
      A(53)=AL
      B(53)=0.689123d76
      II=1
      DO 10 II=II,26
      IF(L(II).AND.G(II))GO TO 701
      IF(L(II).OR.G(II))GO TO 702
  701 WRITE(6,103)II
      GO TO 10
  702 WRITE(6,102)II,L(II),G(II)
   10 CONTINUE

      WRITE(6,777)

      DO 11 JJ=27,53
      DIF =A(JJ)-B(JJ)
      IF(B(JJ))1,2,1
    1 IF(ABS(DIF)-1.0E-5*ABS(B(JJ)))703,703,704
    2 IF(ABS(DIF)-1.0E-5)703,703,704
  703 WRITE(6,105)JJ
      GO TO 11
  704 WRITE(6,104)JJ,A(JJ),B(JJ),DIF
   11 CONTINUE
      STOP
      END
      SUBROUTINE SUB(LS,I,J)
      LOGICAL LS
      DIMENSION LS(I,J)
      LS(1,1)=.TRUE.
      LS(3,2)=.FALSE.
      LS(2,3)=.TRUE.
      LS(1,5)=.FALSE.
      LS(3,6)=.TRUE.
      RETURN
      END
      SUBROUTINE SUB1(LS,I,J,K)
      LOGICAL LS
      DIMENSION LS(I,J,K)
      LS(1,1,1)=.TRUE.
      LS(1,2,1)=.FALSE.
      LS(1,1,2)=.TRUE.
      LS(2,3,2)=.FALSE.
      LS(2,1,3)=.TRUE.
      LS(1,1,4)=.FALSE.
      LS(I,J,K)=.TRUE.
      RETURN
      END
      SUBROUTINE SUB2(LS,I)
      LOGICAL LS
      DIMENSION LS(I)
      LS(1)=.FALSE.
      LS(4)=.TRUE.
      LS(9)=.FALSE.
      LS(11)=.TRUE.
      LS(15)=.FALSE.
      LS(16)=.TRUE.
      LS(20)=.FALSE.
      LS(22)=.TRUE.
      LS(25)=.FALSE.
      RETURN
      END
      SUBROUTINE SUB3(S,I,J)
      REAL*8 S(I,J)
      S(1,1)=33445531
      S(3,2)=-33445531.0
      S(2,3)=0.0
      S(1,5)=0.3d70
      S(3,6)=0.65d-60
      RETURN
      END
      SUBROUTINE SUB4(S,I,J,K)
      REAL*8 S(I,J,K)
      S(1,1,1)=-33445531d-60
      S(1,2,1)=33445531d65
      S(1,1,2)=0E0
      S(2,3,2)=0.1E30
      S(2,1,3)=123.456E-19
      S(1,1,4)=S(1,2,1)
      S(I,J,K)=3.9E-1
      RETURN
      END
      SUBROUTINE SUB5(S,I)
      REAL*8 S(I)
      S(1)=6789109d60
      S(4)=-67.0001E-3
      S(9)=0.0
      S(11)=S(1)
      S(15)=33333333E3
      S(16)=5963596E3
      S(20)=0.1d-60
      S(22)=-693E04
      S(25)=0E0
      RETURN
      END
      SUBROUTINE SUB6
      real*8 A,AS
      COMMON A(3),AS
      AS =689123d70
      RETURN
      END
