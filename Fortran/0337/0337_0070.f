      COMMON P,Q,R(3),X(2,2,2)/BCK/Y1,Y2(2,2,2)/BCK2/Z1,Z2,Z3(2,2)
      Z1  =0.32131
      Z3(2,2)=1.456E 2
      R(3)   =0.4718
      Z3(2,2)=8.888
      Y2(1,1,1)=7.777
      Y2(1,2,1)=6.666
      Q      =1.121E-03
      ITM=1
      CALL SUB1(ITM)
C
      ANS =0.13561E 10
      RST =P
      CALL SUB3(ANS,RST,ITM)
C
      ANS =-34.4E 3
      RST =R(1)
      CALL SUB3(ANS,RST,ITM)
C
      ANS =3.978E-5
      RST =X(1,1,1)
      CALL SUB3(ANS,RST,ITM)
C
      ANS =0.23718E 4
      RST =X(1,1,2)
      CALL SUB3(ANS,RST,ITM)
C
      ANS =3276780E 12
      RST =Y1
      CALL SUB3(ANS,RST,ITM)
C
      ANS =-44556.6E 03
      RST =Y2(2,2,1)
      CALL SUB3(ANS,RST,ITM)
C
      ANS =-9979.8E 02
      RST =Z2
      CALL SUB3(ANS,RST,ITM)
C
      ANS =7654.3E 10
      RST =Z3(2,1)
      CALL SUB3(ANS,RST,ITM)
      STOP 1234,quiet=.true.
      END
      SUBROUTINE SUB1(ITM)
      COMMON TT(10)/BCK2/S(6)/BCK3/W(3,3)
      TT(1)=0.13561E 10
      TT(3)=-34.4E 3
      TT(6)=3.978E-5
      TT(10)=0.23718E 4
      W(3,1)=4.445
      CALL SUB2(ITM)
C
      ANS =-9979.8E 02
      RST =S(2)
      CALL SUB3(ANS,RST,ITM)
C
      ANS =7654.3E 10
      RST =S(4)
      CALL SUB3(ANS,RST,ITM)
C
      ANS =1.121E-03
      RST =TT(2)
      CALL SUB3(ANS,RST,ITM)
C
      ANS =0.4718
      RST =TT(5)
      CALL SUB3(ANS,RST,ITM)
C
      ANS =8.888
      RST =S(6)
      CALL SUB3(ANS,RST,ITM)
C
      ANS =0.32131
      RST =S(1)
      CALL SUB3(ANS,RST,ITM)
C
      ANS =-132.1E 07
      RST =W(2,3)
      CALL SUB3(ANS,RST,ITM)
      RETURN
      END
      SUBROUTINE SUB2(ITM)
      COMMON /BCK/XX(9)/BCK3/SS(9)/BCK2/SP(6)
      XX(1)=3276780E 12
      XX(5)=-44556.6E 03
      SS(2)=0.12345E 10
      SS(8)=-132.1E 07
      SP(2)=-9979.8E 02
      SP(4)=7654.3E 10
      ITM =1
C
      ANS =0.32131
      RST =SP(1)
      CALL SUB3(ANS,RST,ITM)
C
      ANS=8.888
      RST =SP(6)
      CALL SUB3(ANS,RST,ITM)
C
      ANS =4.445
      RST =SS(3)
      CALL SUB3(ANS,RST,ITM)
C
      ANS =7.777
      RST =XX(2)
      CALL SUB3(ANS,RST,ITM)
C
      ANS =6.666
      RST =XX(4)
      CALL SUB3(ANS,RST,ITM)
      RETURN
      END
      SUBROUTINE SUB3(ANS,RST,ITM)
      DIF =RST-ANS
      IF(ABS(DIF)-1.0E-06)900,901,901
  900 WRITE(6,103)ITM
      GO TO 1000
  901 WRITE(6,102)ITM,RST,ANS,DIF
 1000 ITM =ITM+1
  102 FORMAT(1H0,12X,7H*ERROR*,7X,2H( ,I2,2H ),10X,E14.7,13X,E14.7,9X,
     *E14.7)
  103 FORMAT(1H0,12X,4H*OK*,10X,2H( ,I2,2H ),10X,E14.7,13X,E14.7,9X,
     *E14.7)
      RETURN
      END
