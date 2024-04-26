      DIMENSION  IX(4),IZ(2,2),RX(4),RZ(2,2)
C
       IFUN2(I1,I2)           =I1*3-IA+I2
       IFUN3(I1,I2,I3,I4,I5)  =I1**2+I1*3+2-IY*I2+I3/I4-IC*I5
       IFUN5(R1,R2)           =R1*3.0-RD-R2**2
       IFUN6(R1,R2,R3,R4,R5)  =R1**2+R1*3.0+2.0-RY*R2+R3/R4-RD*R5
       IFUN1                  =5
       IFUN4                  =5.0
      IA  =2
      IB  =3
      IC  =4
      ID  =15
      IE       =100
      IX(1)    =11
      IX(2)    =22
      IX(3)    =33
      IX(4)    =44
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
      RX(4)    =2.25E-1
      RZ(1,1)  =111.1
      RZ(2,1)  =22.22
      RZ(1,2)  =888.8
      RZ(2,2)  =99.99
      IY       =3
      RY       =3.0
      WRITE (6,110)
C
C
      N=1
      IVAL     =IFUN1
      IANS     =5
      CALL     SUB(N,IVAL,  IANS)
C
C
      N=2
      IVAL      =IFUN2(10,4)-120
      IANS    =10*3-IA+4-120
      IANS     =-88
      CALL     SUB(N,IVAL,  IANS)
C
C
      N=3
      IVAL      =IFUN3(1,2,4,2,5)
      IANS     =1**2+1*3+2-IY*2+4/2-IC*5
      IANS     =-18
      CALL     SUB(N,IVAL,  IANS)
C
C
      N=4
      IVAL      =IFUN2(IX(1),IZ(2,2))-40
      IANS     =IX(1)*3-IA+IZ(2,2) -40
      IANS     =-3
      CALL     SUB(N,IVAL,  IANS)
C
C
      N=5
      IVAL      =IFUN3(IX(1),IX(3),IZ(1,1),IB,IZ(2,2))
      IANS     =IX(1)**2+IX(1)*3+2-IY*IX(3)+IZ(1,1)/IB-IZ(2,1)*IZ(2,2)
      IANS     =34
      CALL     SUB(N,IVAL,  IANS)
C
C
      N=6
      IVAL     =IFUN4
      IANS     =5.0
      CALL     SUB(N,IVAL,  IANS)
C
C
      N=7
      IVAL      =IFUN5(10.0,4.4)-120
      IANS     =10.0*3.0-RD   -4.4**2-120.0
      IANS     =-114
      CALL     SUB(N,IVAL,  IANS)
C
C
      N=8
      IVAL      =IFUN6(1.0,2.0,3.0,4.0,0.5E1)
      IANS     =1.0**2+1.0*3.0+2.0-RY*2.0+3.0/4.0-RD     *0.5E1
      IANS     =-21
      CALL     SUB(N,IVAL,  IANS)
C
C
      N=9
      IVAL      =IFUN5(RX(1),RZ(2,2))-40
      IANS     =RX(1)*3.0-RD   -RZ(2,2)**2-40.0
      IANS     =-10040
      CALL     SUB(N,IVAL,  IANS)
C
C
      N=10
      IVAL      =IFUN6(RX(1),RX(3),RZ(1,1),RB,RZ(2,2))
      IANS     =RX(1)**2+RX(1)*3.0+2.0-RY*RX(3)+RZ(1,1)/RB-RD*
     1          RZ(2,2)
      IANS     =-685
      CALL     SUB(N,IVAL,  IANS)
C
  110 FORMAT (///  10X,11H- JUSTICE -,5X,8H- ITEM -,6X,19H- COMPUTED RES
     1ULT -,10X,17H- COMPARE VALUE - /)
      STOP
      END
      SUBROUTINE     SUB(N,IVAL,  IANS)
      IF(IVAL-IANS) 2,1,2
    1 WRITE(6,130)  N,IVAL,  IANS
  130 FORMAT (1H0,12X,7H*0K*   ,8X,1H(,I2,1H),9X,I15,14X,I15 )
      GO TO 3
    2 WRITE(6,140)  N,IVAL,  IANS
  140 FORMAT (1H0,12X,7H*ERR0R*,8X,1H(,I2,1H),9X,I15,14X,I15 )
    3 RETURN
      END
