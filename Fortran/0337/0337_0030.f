      DIMENSION  IX(4),IZ(2,2),RX(4),RZ(2,2)
       RFUN2(R1,R2)           =R1*3.0-RF   -R2**2
       RFUN3(R1,R2,R3,R4,R5)  =R1**2+R1*3.0+2.0-RY*R2+R3/R4-RF*R5
       RFUN5(I1,I2)           =I1*3-IA+I2
       RFUN6(I1,I2,I3,I4,I5)  =I1**2+I1*3+2-IY*I2+I3/I4-IC*I5
       RFUN4                  =5
       RFUN1                  =5.0
      IA       =2
      IB       =3
      IC       =4
      ID       =15
      IE       =100
      IX(1)    =11
      IX(2)    =22
      IX(3)    =33
      IX(4)    =44
      IY       =3
      IZ(1,1)  =3
      IZ(2,1)  =4
      IZ(1,2)  =5
      IZ(2,2)  =6
      RA       =1.1
      RB       =2.2
      RC       =3.3
      RD       =4.4
      RE       =5.5
      RF       =6.6
      RX(1)    =.55
      RX(2)    =.77
      RX(3)    =1.0E2
      RX(4)    =2.55E-1
      RY       =3.0
      RZ(1,1)  =111.1
      RZ(2,1)  =22.22
      RZ(1,2)  =888.8
      RZ(2,2)  =99.99
      WRITE (6,110)
C
      N=1
      RVAL     =RFUN1
      RANS     =5.0
      CALL     SUB(N,RVAL,  RANS)
C
      N=2
      RVAL      =RFUN2(10.0,4.4)-120.0
      RANS     =10.0*3.0-RF   -4.4**2-120.0
      RANS     =-0.1159600E 03
      CALL     SUB(N,RVAL,  RANS)
C
C
      N=3
      RVAL      =RFUN3(1.0,2.0,3.0,4.0,.5E1)
      RANS     =1.0**2+1.0*3.0+2.0-RY*2.0+3.0/4.0-RF     *0.5E1
      RANS     =-0.3225000E 02
      CALL     SUB(N,RVAL,  RANS)
C
      N=4
      RVAL      =RFUN2(RX(1),RZ(2,2))-40.0
      RANS     =RX(1)*3.0-RF   -RZ(2,2)**2-40.0
      RANS     =-0.1004295E 05
      CALL     SUB(N,RVAL,  RANS)
C
C
      N=5
      RVAL      =RFUN3(RX(1),RX(3),RZ(1,1),RB,RZ(2,2))
      RANS     =RX(1)**2+RX(1)*3.0+2.0-RY*RX(3)+RZ(1,1)/RB-RZ(2,2)*RF
      RANS     =-0.9054815E 03
      CALL     SUB(N,RVAL,  RANS)
C
      N=6
      RVAL     =RFUN4
      RANS     =5.0
      CALL     SUB(N,RVAL,  RANS)
C
C
      N=7
      RVAL      =RFUN5(10,4)-120.0
      RANS     =10*3-IA+4-120
      RANS     =-0.8800000E 02
      CALL     SUB(N,RVAL,  RANS)
C
      N=8
      RVAL      =RFUN6(1,2,4,2,5)
      RANS     =1**2+1*3+2-IY*2+4/2-IC*5
      RANS     =-0.1800000E 02
      CALL     SUB(N,RVAL,  RANS)
C
      N=9
      RVAL      =RFUN5(IX(1),IZ(1,2))-40.0
      RANS     =IX(1)*3-IA+IZ(1,2) -40
      RANS     =-0.4000000E 01
      CALL     SUB(N,RVAL,  RANS)
C
C
      N=10
      RVAL      =RFUN6(IX(1),IX(3),IZ(1,1),IB,IZ(2,2))
      RANS     =IX(1)**2+IX(1)*3+2-IY*IX(3)+IZ(1,1)/IB-IC     *IZ(2,2)
      RANS     =0.3400000E 02
      CALL     SUB(N,RVAL,  RANS)
C
  110 FORMAT (///  10X,11H- JUSTICE -,5X,8H- ITEM -,6X,19H- COMPUTED RES
     1ULT -,10X,17H- COMPARE VALUE -,8X,14H- DIFFERENCE - / )
      STOP
      END
      SUBROUTINE    SUB(N,RVAL,  RANS)
      DIF=RANS-RVAL
      IF( ABS(RVAL-  RANS)-1.0E-5*ABS(RANS))  1,2,2
    1 WRITE (6,130) N
  130 FORMAT (1H0,12X,7H*OK*   ,8X,1H(,I2,1H),9X,E15.7,14X,E15.7,
     1      8X,E15.7  )
      GO TO 3
    2 WRITE (6,140) N,RVAL,  RANS,DIF
  140 FORMAT (1H0,12X,7H*ERR0R*,8X,1H(,I2,1H),9X,E15.7,14X,E15.7,
     1      8X,E15.7  )
    3 RETURN
      END
