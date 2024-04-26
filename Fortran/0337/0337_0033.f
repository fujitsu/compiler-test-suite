      DIMENSION     IX(2,2),IY(3)
      IA       =10
      IB       =-40
      IC       =11
      ID       =-3
      IE       =-7
      IX(1,1)  =-55
      IX(2,1)  =11
      IX(1,2)  =22
      IX(2,2)  =-35
      IY(1)    =-5
      IY(2)    =28
      IY(3)    =5
      WRITE (6,110)
C
      N=1
      IVAL     =ISUB1(4)
      IANS     =4*50-111
      IANS    =89
      CALL     SUB(N,IVAL,IANS)
C
      N=2
      IVAL     =ISUB1(IA)
      IANS     =IA*50-111
      IANS    =389
      CALL      SUB(N,IVAL,IANS)
C
      J=3
      K=2
      N=3
      IVAL     =ISUB1(IX(J-1,K))
      IANS     =(IX(2,2))**2-5
      IANS    =1220
      CALL      SUB(N,IVAL,IANS)
C
      N=4
      IVAL     =ISUB3(IX)
      IANS     =IABS(IX(1,1))+IX(2,2)
      IANS    =20
      CALL     SUB(N,IVAL,IANS)
C
      N=5
      IVAL     =ISUB1(IA*N/5-10)
      IANS     =(IA*N/5-10)**2-5
      IANS    =-5
      CALL      SUB(N,IVAL,IANS)
C
      N=6
      IVAL     =ISUB2(3,-10,-22)
      IANS     =3-10-IABS(-22)
      IANS    =-29
      CALL     SUB(N,IVAL,IANS)
C
      N=7
      IVAL     =ISUB2(IY(2),IX(J-1,K),IY(N-6))
      IANS     =IY(2)+IX(2,2)-IABS(IY(1))
      CALL     SUB(N,IVAL,IANS)
C
      N=8
      IVAL     =ISUB2(4/2+3,ID+2*IE,ID**2)
      IANS     =(-4/2-3+ID+2*IE-ID**2)/3
      IANS    =-12
      IANS    =-10
      CALL     SUB(N,IVAL,IANS)
C
      N=9
      IVAL     =ISUB4(IA,IX,IY)
      IANS     =10*(IABS(IY(1))*3-IY(2)-IY(3))-(IX(1,1)-IX(2,1)+IX(1,2)
     1     -IX(2,2))
      IANS    =-171
      CALL     SUB(N,IVAL,IANS)
C
  110 FORMAT (///  10X,11H- JUSTICE -,5X,8H- ITEM -,6X,19H- COMPUTED RES
     1ULT -,10X,17H- COMPARE VALUE - / )
      STOP
      END
      FUNCTION      ISUB1(I1)
      IF(I1-2) 1,1,2
    1 ISUB1    =I1**2-5
      GO TO 3
    2 ISUB1    =I1*50-111
    3 RETURN
      END
      FUNCTION      ISUB2(I1,I2,I3)
      II=I1+I2-I3*3
      IF(II)  1,1,2
    1 ISUB2    =(-I1+I2-I3)/3
      RETURN
    2 ISUB2    =I1+I2-IABS(I3)
      RETURN
      END
      FUNCTION      ISUB3(I1)
      DIMENSION     I1(2,2)
      IF(I1(1,1)-I1(2,1))  1,1,2
    1 ISUB3    =IABS(I1(1,1))+I1(2,2)
      RETURN
    2 ISUB3    =I1(2,1)+I1(1,2)
      RETURN
      END
      FUNCTION      ISUB4(I1,I2,I3)
      DIMENSION I2(2,2), I3(3)
      JA  =I1
      JB  =I2(1,1)-I2(2,1)+I2(1,2)-I2(2,2)
      JC  =IABS(I3(1))*3-I3(2)-I3(3)
      IF(JC-JA)  1,2,2
    1 ISUB4    =JA*JC-JB
      RETURN
    2 ISUB4    =JA/JC+JB
      RETURN
      END
      SUBROUTINE    SUB(N,IVAL,IANS)
      IF(IABS(IVAL-IANS)-1 )  1,1,2
    1 WRITE (6,130) N,IVAL,IANS
      RETURN
    2 WRITE (6,140) N,IVAL,IANS
  130 FORMAT (1H0,12X,7H*OK*   ,8X,1H(,I2,1H),9X,I15,14X,I15  )
  140 FORMAT (1H0,12X,7H*ERROR*,8X,1H(,I2,1H),9X,I15,14X,I15  )
      RETURN
      END
