      IMPLICIT  COMPLEX(A-H,T)
      DIMENSION B(5),C(2,3),D(2,2,2),E(3),A(20),T(20),H(5,5,5)
      REAL DIFI,DIFR,AG
      COMMON C,HI
      EQUIVALENCE (F,G),(G,B(2)),(B(2),C(1,3)),(C(1,3),D(1,1,1))
      EQUIVALENCE (E(2),B(5)),(D(1,1,1),H(1,1,1))
  100 FORMAT(1H1 / 2X,28H*FORTRAN*              ENTER)
  101 FORMAT(1H0 // 10X,44H- JUSTICE -     - ITEM -          - COMPUTED
     *9H RESULT -13X,17H- COMPARE VALUE -15X,14H- DIFFERENCE -/)
  102 FORMAT(1H0 8X,15H*ERROR* *ERROR*,3X,2H( ,I2,2H ),5X,2E14.7,
     *2(3X,2E14.7))
  103 FORMAT(1H0 11X,12H*OK*    *OK*3X,2H( ,I2,2H ),5X,2E14.7,
     *2(3X,2E14.7))
  104 FORMAT(1H0 8X,15H*ERROR*    *OK*,3X,2H( ,I2,2H ),5X,2E14.7,
     *2(3X,2E14.7))
  105 FORMAT(1H0 11X,12H*OK* *ERROR*,3X,2H( ,I2,2H ),5X,2E14.7,
     *2(3X,2E14.7))
  106 FORMAT(1H0 11X,12HREAL    IMAG,6X,3(13X,4HREAL,10X,4HIMAG)/)
  999 FORMAT(1H0/2X,27H*FORTRAN*              EXIT)
      C(1,1)=(4.5,4.5)
      C(2,1)=(97.4,-97.4)
      C(2,2)=(0.0,-39.4)
      F     =(0.0,0.0)
      HI    =(97.4,0.0)
      D(1,2,2)=(-38.4,-99.9)
      WRITE(6,100)
      WRITE(6,101)
      WRITE(6,106)
      HI =(0.3456,-4.9E3)
      H(2,2,1)=(0.0,4.4E4)
      H(3,2,1)=(5.0,-5.0)
      H(4,2,1)=H(3,1,1)
      CALL SUB
      A( 1)=C(1,1)
      T( 1)=(4.5,4.5)
      A( 2)=D(1,1,1)
      T( 2)=(-38.4,99.9)
      A( 3)=B(1)
      T( 3)=(0.0,-39.4)
      A( 4)=D(2,1,1)
      T( 4)=(0.0,-39.4)
      A( 5)=G
      T( 5)=(0.0,0.0)
      A( 6)=B(2)
      T( 6)=(0.0,0.0)
      A( 7)=C(1,3)
      T( 7)=(0.0,0.0)
      A( 8)=D(1,2,1)
      T( 8)=(0.0,0.0)
      A( 9)=B(3)
      T( 9)=(4.44E18,9.8E-18)
      A(10)=D(2,2,1)
      T(10)=(4.44E18,9.8E-18)
      A(11)=E(1)
      T(11)=(0.3456,-0.49E4)
      A(12)=D(1,1,2)
      T(12)=(0.3456,-0.49E4)
      A(13)=E(2)
      T(13)=(0.99,0.0)
      A(14)=D(2,1,2)
      T(14)=(0.99,0.0)
      A(15)=E(3)
      T(15)=(-38.4,-99.9)
      A(16)=C(2,2)
      T(16)=(0.0,-39.4)
      A(17)=D(2,2,2)
      T(17)=(0.0,9.12)
      A(18)=C(1,2)
      T(18)=(-38.4,99.9)
      A(19)=C(2,3)
      T(19)=(4.44E18,9.8E-18)
      A(20)=B(5)
      T(20)=(0.99,0.0)
      DO 10 I=1,20
      RL  =REAL(T(I))
      AG  =AIMAG(T(I))
      DIFR=REAL(A(I))-RL
      DIFI=AIMAG(A(I))-AG
      IF(RL)1,2,1
    1 IF(ABS(DIFR)-1.0E-5*ABS(RL))700,701,701
    2 IF(ABS(DIFR)-1.0E-6)700,701,701
  700 IF(AG)3,4,3
    3 IF(ABS(DIFI)-1.0E-5*ABS(AG))702,703,703
    4 IF(ABS(DIFI)-1.0E-6)702,703,703
  701 IF(AG)5,6,5
    5 IF(ABS(DIFI)-1.0E-5*ABS(AG))704,705,705
    6 IF(ABS(DIFI)-1.0E-6)704,705,705
  702 WRITE(6,103)I,A(I),T(I),DIFR,DIFI
      GO TO 10
  703 WRITE(6,105)I,A(I),T(I),DIFR,DIFI
      GO TO 10
  704 WRITE(6,104)I,A(I),T(I),DIFR,DIFI
      GO TO 10
  705 WRITE(6,102)I,A(I),T(I),DIFR,DIFI
   10 CONTINUE
      CALL SUB1
      WRITE (6,999)
      STOP
      END
      SUBROUTINE SUB
      DIMENSION A(10)
      COMPLEX A
      COMMON A
      A(3)=(-38.4,99.9)
      A(6)=(4.44E18,9.8E-18)
      A(8)=(0.99,0.0)
      A(10)=(0.0,9.12)
      RETURN
      END
      SUBROUTINE SUB1
      DIMENSION A(35),T(35)
      COMPLEX A,T,DIF
      COMMON A
      T(21)=(4.5,4.5)
      T(22)=(97.4,-97.4)
      T(23)=(-38.4,99.9)
      T(24)=(0.0,-39.4)
      T(25)=(0.0,0.0)
      T(26)=(4.44E18,9.8E-18)
      T(27)=(0.3456,-0.49E4)
      T(28)=(0.99,0.0)
      T(29)=(-38.4,-99.9)
      T(30)=(0.0,9.12)
      T(31)=(0.0,4.4E4)
      T(32)=(5.0,-5.0)
      T(33)=(0.3456,-0.49E4)
      I=1
      N=8
  699 DO 10 I=I,N
      J  =I+20
      RL  =REAL(T(I+20))
      AG  =AIMAG(T(I+20))
      DIFR=REAL(A(I))-RL
      DIFI=AIMAG(A(I))-AG
      IF(RL)1,2,1
    1 IF(ABS(DIFR)-1.0E-5*ABS(RL))700,701,701
    2 IF(ABS(DIFR)-1.0E-6)700,701,701
  700 IF(AG)3,4,3
    3 IF(ABS(DIFI)-1.0E-5*ABS(AG))702,703,703
    4 IF(ABS(DIFI)-1.0E-6)702,703,703
  701 IF(AG)5,6,5
    5 IF(ABS(DIFI)-1.0E-5*ABS(AG))704,705,705
    6 IF(ABS(DIFI)-1.0E-6)704,705,705
  702 WRITE(6,103)J,A(I),T(J),DIFR,DIFI
      GO TO 10
  703 WRITE(6,105)J,A(I),T(J),DIFR,DIFI
      GO TO 10
  704 WRITE(6,104)J,A(I),T(J),DIFR,DIFI
      GO TO 10
  705 WRITE(6,102)J,A(I),T(J),DIFR,DIFI
   10 CONTINUE
  103 FORMAT(1H0 11X,12H*OK*    *OK*3X,2H( ,I2,2H ),5X,2E14.7,
     *2(3X,2E14.7))
  102 FORMAT(1H0 8X,15H*ERROR* *ERROR*,3X,2H( ,I2,2H ),5X,2E14.7,
     *2(3X,2E14.7))
  104 FORMAT(1H0 8X,15H*ERROR*    *OK*,3X,2H( ,I2,2H ),5X,2E14.7,
     *2(3X,2E14.7))
  105 FORMAT(1H0 11X,12H*OK* *ERROK*,3X,2H( ,I2,2H ),5X,2E14.7,
     *2(3X,2E14.7))
  106 FORMAT(1H0 11X,12HREAL    IMAG,6X,3(13X,4HREAL,10X,4HIMAG)/)
      IF(8-I)8,7,8
    7 I=9
      N =13
      WRITE(6,101)
      WRITE(6,106)
      GO TO 699
  101 FORMAT(1H0 // 10X,44H- JUSTICE -     - ITEM -          - COMPUTED
     *9H RESULT -13X,17H- COMPARE VALUE -15X,14H- DIFFERENCE -/)
    8 RETURN
      END
