      INTEGER D(15,2)
C
      WRITE(6,101)
      WRITE(6,102)
      IA=10000
      JA=5000
      IB=-5050
      IE=-100
C
      D(1,1)=6*JA
      D(1,2)=30000
      D(2,1)=6*IB
      D(2,2)=-30300
      D(3,1)=0*JA
      D(3,2)=0
      D(4,1)=IA/200
      D(4,2)=50
      D(5,1)=IA/IE
      D(5,2)=-100
      D(6,1)=0/JA
      D(6,2)=0
      D(7,1)=IA-JA
      D(7,2)=5000
      D(8,1)=JA-5000
      D(8,2)=0
      D(9,1)=JA-IA
      D(9,2)=-5000
      D(10,1)=IA+JA
      D(10,2)=15000
      D(11,1)=JA+IB
      D(11,2)=-50
      D(12,1)=5050+IB
      D(12,2)=0
      M=0
      DO 10 K=1,12
      M=M+1
      IF(D(K,1)-D(K,2))20,30,20
   30 WRITE(6,103)M,D(K,1),D(K,2)
      GO TO 10
   20 WRITE(6,104)M,D(K,1),D(K,2)
   10 CONTINUE
      WRITE(6,999)
  101 FORMAT(1H1 / 6X,24H*FORTRAN*          ENTER)
  102 FORMAT(1H0,//,5X,23H- JUSTICE -    - ITEM -,10X,19H- COMPUTED RESU
     +LT -,17X,17H- COMPARE VALUE -)
  103 FORMAT(1H0,7X,4H*OK*,11X,1H(,I2,1H),17X,I12,22X,I12)
  104 FORMAT(1H0,7X,7H*ERROR*,8X,1H(,I2,1H),17X,I12,22X,I12)
  999 FORMAT(1H0,/,2X,23H*FORTRAN*          EXIT)
      STOP
      END
