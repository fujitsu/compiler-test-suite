      INTEGER DR(4,2),DD(4,2)
      DOUBLE PRECISION D1,D2,D3,D4,D5,D6,D7,D8,D9,D10,DRDIF,DIDIF
     *,CON14,CON15,DAR,DAI,DCR,DCI
C
      WRITE(6,101)
      WRITE(6,102)
C
      CON5=1.0E-5
      CON6=1.0E-6
      CON14=1.0D-14
      CON15=1.0D-15
      AA=4.545
      BA=11.11
      CA=0.11
      AB=44.44
      CC=4.5
      BB=0.22
      BC=-33.3
      CA=3.3
      CB=22.2
      ZZ=4.84
      Y=2.0
      YY=0.2
      DR(1,1)=AB*BA+CB**Y+(BA+CB-CA)/YY
      DR(1,2)=1136
      DR(2,1)=BC*Y+CA-AB/YY+AB**Y*BC/YY+AA/CC
      DR(2,2) = -329107
      DR(3,1)=0.0*(AB+CC-Y/YY)
      DR(3,2)=0
      DR(4,1)=SQRT(ZZ)+AA+BA-CA**Y+Y/YY+BB-YY-BA+ZZ+AA-CA-CC+AB-AB+Y+YY+
     *BB+CB+BC+BA*Y-CC*YY+ZZ-ZZ+AA+CA+AB+CC+Y+YY+BB+BC+CA+CB+AA/CC-AA-YY
     *+CC-CA-CB-CA-BB+CB/Y+Y+CC
      DR(4,2)=60
      M=0
      DO 10 K=1,4
      M=M+1
      IF(DR(K,1)-DR(K,2))22,21,22
   21 WRITE(6,103)M,DR(K,1),DR(K,2)
      GO TO 10
   22 WRITE(6,104)M,DR(K,1),DR(K,2)
   10 CONTINUE
C
      D1=0.0001D0
      D2=0.02222D3
      D3=444.444D-1
      D4=0.66D0
      D5=0.484D1
      D6=0.2D0
      D7=0.3D1
      D8=-22.2D0
      D9=-0.2D1
      D10=30.0D0
C
      DD(1,1)=D3*D7/D1+DSQRT(D5)-D3
      DD(1,2)=1333289
      DD(2,1)=D8+(D9*D10/D6-D7)
      DD(2,2)=-325
      DD(3,1)=0.0D0/(D4**D6+D4)
      DD(3,2)=0
      DD(4,1)=0.0D0*(D1*1.0D3+D2+D7+0.4D1+(D6*0.1D2+D7)+(D7+D7)+8.0D0+D1
     *-D2+D1+D2+D3+D4+D5+D6+D8+D9+D10-D1-D2-D3-D4-D5-D6-D7-D8-D9-D10+0.0
     *D10/D2+D2*D3*D6*D6-D3*D6+D5+D10+D9+D6+D4*D5*D6+D6-D1)
      DD(4,2)=0
      DO 13 K=1,4
      M=M+1
      IF(DD(K,1)-DD(K,2))24,23,24
   23 WRITE(6,103)M,DD(K,1),DD(K,2)
      GO TO 13
   24 WRITE(6,104)M,DD(K,1),DD(K,2)
   13 CONTINUE
      WRITE(6,999)
  101 FORMAT(1H1 / 6X,24H*FORTRAN*          ENTER)
  102 FORMAT(1H0 // 5X,23H- JUSTICE -    - ITEM -,10X,19H- COMPUTED RESU
     *LT -,17X,17H- COMPARE VALUE -)
  103 FORMAT(1H0,7X,4H*OK*,11X,1H(,I2,1H),17X,I12,22X,I12)
  104 FORMAT(1H0,7X,7H*ERROR*,8X,1H(,I2,1H),17X,I12,22X,I12)
  113 FORMAT(1H1 ///)
  999 FORMAT(1H0,/,2X,23H*FORTRAN*          EXIT)
      STOP
      END