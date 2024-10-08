C
      INTEGER     D0,D1,D2,D3,D4,D5,D6,D7,D8,DAI(2,2,2),IW(10)
      WRITE (6,5)
    5 FORMAT(1H1 / 6X,24H*FORTRAN*          ENTER /  )
      WRITE (6,10)
   10 FORMAT(1H0,7X,8H+ ITEM +,5X,15H+ SOURCE DATA +,5X,
     *      20H+ FIELD DESCRIPTOR +,5X,26H+ CONPARE VALUE - ANSWER + /)
      D0 =0
      D1 = 0
      D2 = -3924
      D3 = +32767
      D4 = -32768
      D5 = 32768
      D6 = -1234567
      D7 = 2147483647
      D8 =-2147483647
      ITEM=1
C
      WRITE (6,20) ITEM,D1,D2,D3,D4
   20 FORMAT(1H0,9X,1H(,I2,1H),12X,10H       0  ,13X,4H I10,21X,
     *      10H         0 / 74X,I10 // 26X,10H   -3924  ,13X,4H I10,
     *      21X,10H     -3924/ 74X,I10 // 26X,10H  +32767  ,13X,4H I10,
     *      21X,10H     32767 / 74X,I10 // 26X,10H  -32768  ,13X,4H I10,
     *      21X,10H    -32768 / 74X,I10 )
C
      WRITE (6,25) D5,D6,D7
   25 FORMAT(1H0,25X,10H   32768  ,13X,4H I10,21X,10H     32768 / 74X,
     *      I10 // 26X,10H-1234567  ,13X,4H I10,21X,10H  -1234567 / 74X,
     *      I10 // 24X,12H2147483647  ,13X,4H I10,21X,10H2147483647 /
     *      74X,I10 )
C
      ITEM=ITEM+1
      WRITE (6,30) ITEM,D8,D2,D6
   30 FORMAT(1H0,9X,1H(,I2,1H),9X,13H-2147483647  ,13X,4H I15,16X,
     *      15H    -2147483647 / 69X,I15 // 26X,10H   -3924  ,13X,
     *      4H  I5,26X,5H-3924 / 79X,I5 // 26X,10H-1234567  ,13X,
     *      4H  I8,23X,8H-1234567 / 76X,I8  )
C
      ITEM=ITEM+1
      DO 35 I=1,2
      DO 35 J=1,2
      DO 35 K=1,2
   35 DAI(K,J,I) = D1*D0+32767*I*J*K*(-1)**(I+J+K)
      I = -1
      J =  3
      K =  7
      WRITE (6,40) ITEM,DAI(I+3,K-5,2*I+4),DAI(1,J-2,3*K-20)
   40 FORMAT(1H0,9X,1H(,I2,1H),12X,10HDAI(2,2,2),13X,4H I12,19X,
     *      12H      262136 / 72X,I12 // 26X,10HDAI(1,1,1),13X,4H II8,
     *      13X,18H            -32767 / 66X,I18 )
C
      ITEM=ITEM+1
      WRITE (6,45) ITEM,DAI
   45 FORMAT(1H0,9X,1H(,I2,1H),12X,10HARRAY DAI ,13X,4H I10 // 41X,
     *      40H    -32767     65534     65534   -131068,
     *      40H     65534   -131068   -131068    262136 / 41X,8I10  )
C
      WRITE (6,50)
   50 FORMAT(1H0 / 6X,23H*FORTRAN*          EXIT )
C
C
      WRITE (6,55)
   55 FORMAT( 1H1 / 6X,24H*FORTRAN*          ENTER / )
      WRITE (6,60)
   60 FORMAT(1H0,5X,11H+ JUSTICE +,5X,8H+ ITEM +,5X,15H+ SOURCE DATA +,
     *      5X,20H+ FIELD DESCRIPTOR +,5X,10H+ ANSWER +,5X,
     *      17H+ COMPARE VALUE + / )
      READ (5,70) (IW(I),I=1,10 )
   70 FORMAT(1X,9X,I10,5X,I5,5X,I7,3X,I15 /  I12,I3,5X,I11,9X,I9 /
     *        I8,I11 )
C
      CALL  ICHECK (1,8H-8765432,4H I10,IW(1),-8765432 )
      CALL  ICHECK (2,8H + 32768,4H  I5,IW(2),32768 )
      CALL  ICHECK (3,8H - 32768,4H  I7,IW(3),D4 )
      CALL  ICHECK (4,8H-1234567,4H I15,IW(4),D6 )
      CALL  ICHECK (5,8H  -32769,4H I12,IW(5),-32769 )
      CALL  ICHECK (6,8H        ,4H  I3,IW(6),D1     )
      CALL ICHECK (7,8H     -  ,4H I11,IW(7),D1  )
      CALL ICHECK (8,8H+1 1  3 ,4H I 9,IW(8),113 )
      CALL ICHECK (9,8H9999  99,4H  I8,IW(9),999999 )
C
  100 WRITE (6,105)
  105 FORMAT(1H0 / 6X,23H*FORTRAN*          EXIT )
      STOP
      END
      SUBROUTINE  ICHECK(M,SD,RH,ANS,COMP )
      DOUBLE PRECISION SD
      INTEGER   ANS,COMP
      IF ( ANS-COMP )  10,20,10
   10 WRITE (6,30) M,SD,RH,ANS,COMP
   30 FORMAT(1H0,7X,7H*ERROR*,9X,1H(,I2,1H),14X,A8,13X,A4,11X,I12,
     *       8X,I12 )
      RETURN
   20 WRITE (6,35) M,SD,RH,ANS,COMP
   35 FORMAT(1H0,7X,7H*OK*   ,9X,1H(,I2,1H),14X,A8,13X,A4,11X,I12,
     *       8X,I12 )
      RETURN
      END
