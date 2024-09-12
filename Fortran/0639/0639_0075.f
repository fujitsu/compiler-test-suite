           REAL       A1(50),A2(50),A3(50),A4(50),A5(50),A6(50),A7(50)
           REAL       R1(50),R2(50),R3(50),R4(50),R5(50),R6(50)
           REAL*8     D1(50),D2(50),D3(50),D4(50),D5(50),D6(50)
           COMPLEX*8  C1(50),C2(50),C3(50),C4(50),C5(50),C6(50)
           COMPLEX*16 CD1(50),CD2(50),CD3(50),CD4(50),CD5(50),CD6(50)
           INTEGER    IA(50)
           REAL       RD(50)
           REAL*8     DD(50)
           DATA       IA/10*1,10*2,10*3,10*4,10*5/
           DATA       RD/50*2.0/
           DATA       DD/50*1.0D0/
           REAL*4     SR4
           REAL*8     SR8
           COMPLEX*8  SC8
           COMPLEX*16 SC16
           INTEGER    SI
           DATA SR4,SR8,SC8,SC16,SI/2.,3.D0,(1.,2.),(2.D0,3.D0),2/

           DATA A1,A2,A3,A4,A5,A6,A7
     E            /50*1.,50*2.,50*3.,50*4.,50*5.,50*6.,50*7./
           DATA R1,R2,R3,R4,R5,R6
     E            /50*1.,50*2.,50*3.,50*4.,50*5.,50*6./
           DATA D1,D2,D3,D4,D5,D6
     E            /50*1.D0,50*2.D0,50*3.D0,50*4.D0,50*5.D0,50*6.D0/
           DATA C1,C2,C3,C4,C5,C6
     1     /50*(1.0,1.0),50*(2.0,2.0),50*(3.0,3.0),50*(4.0,4.0),
     E      50*(5.0,5.0),50*(6.0,6.0) /
           DATA CD1,CD2,CD3,CD4,CD5,CD6
     1     /50*(1.0,1.0),50*(2.0,2.0),50*(3.0,3.0),50*(4.0,4.0),
     E      50*(5.0,5.0),50*(6.0,6.0) /

           S1=1.
           S2=2.
           M = -1

           DO 10 I = 1 , 10
               A1(I) = ( R1(I) *SR4*SR8  )   * ( D1(I) * 2.0*SR8)
               A2(I) = ( R2(I) *RD(1)*SC8)   * ( D2(I) * RD(1)*SI)
               A3(I) = ( R3(I) *SR8*SC8  )   * ( D3(I) * SR8*SC16 )
               A4(I) = ( R4(I) *SC8*SR8  )   * ( D4(I) * SR8*SI )
               A5(I) = ( R5(I) *S2*1.0D0)* ( D5(I) * RD(3)*(2.0,0.0))
               A6(I) = ( R6(I) *RD(3)*(1.0D0,2.0D0))*(D6(I)*DD(2)*1 )
               A7(I) = ( R1(I) *SC8*1.0D0)   * (D2(I)*SC8*IA(5) )
 10        CONTINUE

           DO 20 I = 11 , 20
             IF( I .LE. 15 ) THEN
               A1(I) = ( R1(I) /1.0/SR8  )   / ( D1(I) / SR4/SR8)
               A2(I) = ( R2(I) /RD(2)/SC8)   / ( D2(I) / RD(1)/SI)
               A3(I) = ( R3(I) /SR8/SC8  )   / ( D3(I) / SR8/SC16 )
               A4(I) = ( R4(I) /SC8/SR8  )   / ( D4(I) / SR8/SI )
               A5(I) = ( R5(I) /S2/1.0D0)/ ( D5(I) / RD(3)/(2.0,0.0))
               A6(I) = ( R6(I) /RD(3)/(1.0D0,2.0D0))/(D6(I)/DD(2)+1 )
               A7(I) = ( R1(I) /SC8/1.0D0)   / (D2(I)/SC8/IA(5) )
             ENDIF
 20        CONTINUE

           DO 30 I = 41 , 50
             IF( I .LE. 15 ) THEN
               A1(I) = ( R1(I) *1.0/SR8  )   * ( D1(I) / 2.0+SR8)
               A2(I) = ( R2(I) /RD(2)*SC8)   / ( D2(I) * RD(1)+SI)
               A3(I) = ( R3(I) *SR8/SC8  )   * ( D3(I) / SR8+SC16 )
               A4(I) = ( R4(I) /SC8*SR8  )   / ( D4(I) * SR8+SI )
               A5(I) = ( R5(I) *S2/1.0D0)* ( D5(I) / RD(3)/(2.0,0.0))
               A6(I) = ( R6(I) /RD(3)*(1.0D0,2.0D0))*(D6(I)*DD(2)/1.)
               A7(I) = ( R1(I) *SC8/1.0D0)   + (D2(I)/SC8/IA(5) )
             ELSE
               A1(I) = ( R1(I) /1.0*SR8  )   / ( D1(I) / 2.0+SR8)
               A2(I) = ( R2(I) *RD(2)*SC8)   * ( D2(I) * RD(1)+SI)
               A3(I) = ( R3(I) /SR8*SC8  )   / ( D3(I) / SR8+SC16 )
               A4(I) = ( R4(I) *SC8*SR8  )   * ( D4(I) * SR8+SI )
               A5(I) = ( R5(I) /S2*1.0D0)+ ( D5(I) / RD(3)/(2.0,0.0))
               A6(I) = ( R6(I) *RD(3)*(1.0D0,2.0D0))*(D6(I)/DD(2)*1 )
               A7(I) = ( R1(I) /SC8*1.0D0)   / (D2(I)/SC8*IA(5) )
             ENDIF
 30        CONTINUE

           WRITE(6,11) A1
           WRITE(6,11) A2
           WRITE(6,11) A3
           WRITE(6,11) A4
           WRITE(6,11) A5
           WRITE(6,11) A6
           WRITE(6,11) A7
 11        FORMAT(1H ,4(E13.6,3X))
           END
