      IMPLICIT  COMPLEX(A,B,P-R,X-Z)
      COMMON P,Q,R(3),X(2,2,2)/BCK/Y1,Y2(2,2,2)/BCK2/Z1,Z2,Z3(2,2)
      DIMENSION A(30),B(30)
      WRITE(6,100)
      WRITE(6,101)
  100 FORMAT(1H1 / 2X,28H*FORTRAN*              ENTER)
  101 FORMAT(1H0 // 10X,44H- JUSTICE -     - ITEM -          - COMPUTED
     *9H RESULT -13X,17H- COMPARE VALUE -15X,14H- DIFFERENCE -/)
  999 FORMAT(1H0/2X,27H*FORTRAN*              EXIT)
  106 FORMAT(1H0,11X,12HREAL    IMAG,6X,3(13X, 4HREAL,10X,4HIMAG)//)
      Z3(2,2)  =(9.9,8.8)
      R(3)     =(8.8,7.7)
      Y2(1,1,1)=(7.7,-6.6)
      Y2(1,2,1)=(-6.6,5.5)
      Q        =(-5.5,-5.5)
      Y2(2,2,2)=(0.0,0.0)
      Z1       =(1.4,0.0)
      WRITE(6,106)
      CALL SUB1
      A(14)=P
      B(14)=(0.0,0.0)
      A(15)=R(1)
      B(15)=(4.9E14,8.8E-14)
      A(16)=X(1,1,1)
      B(16)=(-6.6E-14,-4.4E14)
      A(17)=X(1,1,2)
      B(17)=(-1.4,3.3)
      A(18)=Y1
      B(18)=(3.344,5.556)
      A(19)=Y2(2,2,1)
      B(19)=(-6.9,1.3)
      A(20)=Z2
      B(20)=(0.0,0.0)
      A(21)=Z3(2,1)
      B(21)=(-3.8,-6.9)
      A(22)=Z3(1,1)
      B(22)=(96.4,0.0)
      A(23)=Z1
      B(23)=(0.0,67.4)
      I=14
      N=23
      CALL SUB3(I,N,A,B)
      WRITE(6,999)
      STOP
      END
      SUBROUTINE SUB1
      COMMON TT(10)/BCK2/S(6)/BCK3/W(3,3)
      DIMENSION A(30),B(30)
      COMPLEX A,B,TT,S,W
      TT(1) =(0.0,0.0)
      TT(3) =(4.9E14,8.8E-14)
      TT(6) =(-6.6E-14,-4.4E14)
      TT(10)=(-1.4,3.3)
      W(3,1)=(2.2,-1.1)
      S(3)  =(96.4,0.0)
      CALL SUB2
      A( 7)= W(2,1)
      B( 7)=(1.2,3.4)
      A( 8)=S(4)
      B( 8)=(-3.8,-6.9)
      A( 9)=TT(2)
      B( 9)=(-5.5,-5.5)
      A(10)=TT(5)
      B(10)=(8.8,7.7)
      A(11)=S(6)
      B(11)=(9.9,8.8)
      A(12)=S(1)
      B(12)=(1.4,0.0)
      A(13)=W(2,3)
      B(13)=(5.6,-7.8)
      I=7
      N=13
      CALL SUB3(I,N,A,B)
      S(1)  =(0.0,67.4)
      RETURN
      END
      SUBROUTINE SUB2
      COMMON /BCK/XX(9)/BCK3/SS(9)/BCK2/SP(6)
      DIMENSION A(30),B(30)
      COMPLEX A,B,XX,SS,SP
      XX(1)=(3.344,5.556)
      XX(5)=(-6.9,1.3)
      SS(2)=(1.2,3.4)
      SS(8)=(5.6,-7.8)
      SP(2)=(0.0,0.0)
      SP(4)=(-3.8,-6.9)
      A( 1)=SP(1)
      B( 1)=(1.4,0.0)
      A( 2)=SP(6)
      B( 2)=(9.9,8.8)
      A( 3)=SS(3)
      B( 3)=(2.2,-1.1)
      A( 4)=XX(2)
      B( 4)=(7.7,-6.6)
      A( 5)=XX(4)
      B( 5)=(-6.6,5.5)
      A( 6)=XX(9)
      B( 6)=(0.0,0.0)
      I=1
      N=6
      CALL SUB3(I,N,A,B)
      RETURN
      END
      SUBROUTINE SUB3(I,N,A,B)
      DIMENSION A(30),B(30)
      COMPLEX A,B
      DO 10 I=I,N
      ITM=I
      RL  =REAL(B(I))
      AG  =AIMAG(B(I))
      DIFR=REAL(A(I))-RL
      DIFI=AIMAG(A(I))-AG
      IF(RL)1,2,1
    1 IF(ABS(DIFR)-1.0E-5*ABS(RL))702,703,703
    2 IF(ABS(DIFR)-1.0E-5)702,703,703
  702 IF(AG)3,4,3
    3 IF(ABS(DIFI)-1.0E-5*ABS(AG))704,705,705
    4 IF(ABS(DIFI)-1.0E-5)704,705,705
  703 IF(AG)5,6,5
    5 IF(ABS(DIFI)-1.0E-5*ABS(AG))706,707,707
    6 IF(ABS(DIFI)-1.0E-5)706,707,707
  704 WRITE(6,105)ITM,A(I),B(I),DIFR,DIFI
      GO TO 10
  705 WRITE(6,107)ITM,A(I),B(I),DIFR,DIFI
      GO TO 10
  706 WRITE(6,106)ITM,A(I),B(I),DIFR,DIFI
      GO TO 10
  707 WRITE(6,104)ITM,A(I),B(I),DIFR,DIFI
   10 CONTINUE
  104 FORMAT(1H0,8X,15H*ERROR* *ERROR*3X,2H( I2,2H )5X,2E14.7,
     *2(3X,2E14.7))
  105 FORMAT(1H0,11X,12H*OK*    *OK*3X,2H( I2,2H )5X,2E14.7,
     *2(3X,2E14.7))
  106 FORMAT(1H0,8X,15H*ERROR*    *OK*,3X,2H( I2,2H )5X,2E14.7,
     *2(3X,2E14.7))
  107 FORMAT(1H0,11X,12H*OK* *ERROR*3X,2H( I2,2H )5X,2E14.7,
     *2(3X,2E14.7))
      RETURN
      END
