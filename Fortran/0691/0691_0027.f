      INTEGER ADI(12),BDI(12),DIF
      DA=1.25
      DB=4.0
      DC=30000.0
      DD=32000.0
  100 FORMAT(1H1 / 6X,24H*FORTRAN*          ENTER)
  101 FORMAT(1H0 / 5X,11H- JUSTICE -,4X,8H- ITEM -,10X,19H- COMPUTED RES
     1ULT -,17X,17H- COMPARE VALUE -)
  102 FORMAT(1H0 7X,4H*OK*,11X,1H(I2,1H),17X,I12,22X,I12)
  103 FORMAT(1H0 7X,7H*ERROR*,8X,1H(I2,1H),17X,I12,22X,I12)
  999 FORMAT(1H0 / 6X,23H*FORTRAN*          EXIT)
C
      ADI(1)=-DB+DA
      BDI(1)=-2
      ADI(2)=30000.0+(-DC)
      BDI(2)=0
      ADI(3)=DD+DA
      BDI(3)=32001
      ADI(4)=-DC-DD
      BDI(4)=-62000
      ADI(5)=4.5-DB
      BDI(5)=0
      ADI(6)=DB-DA
      BDI(6)=2
      ADI(7)=DA*(-5.0)
      BDI(7)=-6
      ADI(8)=0.0*(-DA)
      BDI(8)=0
      ADI(9)=DC*DA
      BDI(9)=37500
      ADI(10)=-157.0/49.0
      BDI(10)=-3
      ADI(11)=DC/DD
      BDI(11)=0
      ADI(12)=DD/DB
      BDI(12)=8000
      WRITE(6,100)
      WRITE(6,101)
      I=1
      N=12
      DO 10 I=I,N
      DIF=ADI(I)-BDI(I)
      IF(DIF)701,700,701
  700 WRITE(6,102)I,ADI(I),BDI(I)
      GO TO 10
  701 WRITE(6,103)I,ADI(I),BDI(I)
   10 CONTINUE
      WRITE(6,999)
      STOP
      END
