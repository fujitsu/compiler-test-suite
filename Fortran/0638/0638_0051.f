       INTEGER*4 A1(10)/1,2,3,4,5,6,7,8,9,10/
       REAL   *4 A2(10)/10.,2.,3.,4.,5.,6.,7.,8.,9.,10./
       REAL   *8 A3(10)/1.,2.,3.,14.,5.,6.,7.,8.,9.,10./
       COMPLEX*8 A4(10)/8*(1.0,1.0),2*(2.0,2.0)/
       COMPLEX*16 A5(10)/10*(2.0,9.0)/
       INTEGER*4 IX,II
       REAL   *4 RX
       REAL   *8 DX
       COMPLEX*8 CX
       COMPLEX*16 CDX

       IX=0
       DO 10 I=1,10
         IXX=A1(I)
         IF(IXX.GT.IX) THEN
           IX=IXX
           II=I
         ENDIF
10     CONTINUE
       WRITE(6,*) 'ITEM1',A1,IX,II

       RX=0
       DO 20 I=1,10
         RXX=A2(I)
         IF(RXX.GT.RX) THEN
           RX=RXX
           II=I
         ENDIF
20      CONTINUE
       WRITE(6,*) 'ITEM2',A2,RX,II

       DX=0.0
       DO 30 I=1,10
         IF(A3(I).GT.DX) THEN
           DX=A3(I)
           II=I
         ENDIF
30     CONTINUE
       WRITE(6,*) 'ITEM3',A3,DX,II

       CX=(0.0,0.0)
       DO 40 I=1,10
         IF(REAL(A4(I)).GT.REAL(CX)) THEN
           CX=A4(I)
           II=I
         ENDIF
40     CONTINUE
       WRITE(6,*) 'ITEM4',A4,CX,II

       CDX=(0.0,0.0)
       DO 50 I=1,10
         IF(REAL(A5(I)).GT.REAL(CDX)) THEN
           CDX=A5(I)
           II=I
         ENDIF
50     CONTINUE
       WRITE(6,*) 'ITEM5',A5,CDX,II
       STOP
       END
