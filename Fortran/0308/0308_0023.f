      INTEGER*2   I02I,I02J,I02K                                        
      INTEGER*4   I04A(5),I04B(5),I04C(5),I04D(5),I04E(5)               
     .           ,I04F(5),I04G(5),I04H(5),I04I(5),I04J(5)               
     .           ,I04K(5),I04L(5),I,J,ERROR01                           
     .           ,ERROR02,ERROR03,ERROR04,ERROR05,ERROR06               
     .           ,ERROR07,ERROR08,ERROR09,ERROR10,ERROR11               
      REAL*4      R04A(5),R04B(5),R04C(5),R04D(5),CVALUE                
      LOGICAL*1   L01A(5),L01B(5),L01C(5),L01D(5),L01E(5,5),L01F(5,5)   
     .           ,L01G(5),L01H(5),L01I(5),L01J(5),L01K(5,5),L01L(5,5)   
      LOGICAL*4   L04A(5),L04B(5),L04C(5),L04D(5),L04E(5)               
     .           ,L04F(5),L04G(5),L04H(5),L04I(5),L04J(5)               
     .           ,L04K(5)                                               
      COMPLEX*8   C08A(5),C08B(5),C08C(5),C08D(5)                       
      CHARACTER*5 CH5A(5),CH5B(5,5)                                     
      CHARACTER*6 CH6A(6),CH6B(6,6)                                     

      DATA   I04L/    -2   ,    -4   ,    -6   ,    -8   ,    -10  /    
     .      ,R04A/     1.5 ,    -1.2 ,    -1.4 ,    -1.7 ,    -1.6 /    
     .      ,R04B/     1.0 ,    -1.0 ,    -1.0 ,     1.0 ,    -1.0 /    
     .      ,R04C/     2.0 ,     2.0 ,     2.0 ,     2.0 ,     2.0 /    
     .      ,R04D/     4.0 ,     4.0 ,     4.0 ,     4.0 ,     4.0 /    
     .      ,L01G/.TRUE. ,.TRUE. ,.TRUE. ,.TRUE. ,.TRUE. /              
     .      ,L01H/.TRUE. ,.TRUE. ,.TRUE. ,.TRUE. ,.TRUE. /              
     .      ,L01I/.FALSE.,.FALSE.,.FALSE.,.FALSE.,.FALSE./              
     .      ,L01J/.FALSE.,.FALSE.,.TRUE. ,.TRUE. ,.TRUE./              
     .      ,L01K/.FALSE.,.FALSE.,.FALSE.,.FALSE.,.FALSE.               
     .           ,.FALSE.,.FALSE.,.FALSE.,.FALSE.,.FALSE.               
     .           ,.FALSE.,.FALSE.,.FALSE.,.FALSE.,.FALSE.               
     .           ,.FALSE.,.TRUE. ,.TRUE. ,.TRUE. ,.TRUE.                
     .           ,.TRUE. ,.TRUE. ,.TRUE. ,.TRUE. ,.TRUE. /              
     .      ,L01L/.TRUE. ,.TRUE. ,.TRUE. ,.TRUE. ,.TRUE.                
     .           ,.TRUE. ,.TRUE. ,.TRUE. ,.TRUE. ,.TRUE.                
     .           ,.TRUE. ,.TRUE. ,.TRUE. ,.TRUE. ,.TRUE.                
     .           ,.TRUE. ,.TRUE. ,.TRUE. ,.TRUE. ,.TRUE.                
     .           ,.TRUE. ,.TRUE. ,.TRUE. ,.TRUE. ,.TRUE. /              
     .      ,L04I/.FALSE.,.FALSE.,.FALSE.,.FALSE.,.FALSE./              
     .      ,L04J/.TRUE. ,.TRUE. ,.TRUE. ,.TRUE. ,.TRUE. /              
     .      ,L04K/.TRUE. ,.TRUE. ,.FALSE.,.TRUE. ,.FALSE./              
     .      ,C08B/(1.0,1.0),(2.0,2.0),(3.0,3.0),(4.0,4.0),(5.0,5.0)/    
     .      ,C08C/(9.0,9.0),(8.0,8.0),(7.0,7.0),(6.0,6.0),(0.0,0.0)/    
     .      ,C08D/(-6.5857868,-8.0000000),(-4.5857868 ,-6.0000000)      
     .           ,(-2.5857868,-4.0000000),(-0.58578682,-2.0000000)      
     .           ,( 6.4142132, 5.0000000)                          /    
     .      ,CH5A/  '01234',  '12345',  '23456',  '34567',  '45678'/    
     .      ,CH5B/  'ABCDE',  'BCDEF',  'CDEFG',  'DEFGH',  'EFGHI'     
     .             ,'FGHIJ',  'GHIJK',  'HIJKL',  'IJKLM',  'JKLMN'     
     .             ,'KLMNO',  'LMNOP',  'MNOPQ',  'NOPQR',  'OPQRS'     
     .             ,'PQRST',  'QRSTU',  'RSTUV',  'STUVW',  'TUVWX'     
     .             ,'UVWXY',  'VWXYZ',  'WXYZ0',  'XYZ01',  'YZ012'/    
     .      ,CH6A/ '012345', '123456', '234567', '345678', '456789'     
     .            ,'567890'                                        /    
     .      ,CH6B/ 'AABCDE', 'BBCDEF', 'CCDEFG', 'DDEFGH', 'EEFGHI'     
     .            ,'FFGHIJ', 'GGHIJK', 'HHIJKL', 'IIJKLM', 'JJKLMN'     
     .            ,'KKLMNO', 'LLMNOP', 'MMNOPQ', 'NNOPQR', 'OOPQRS'     
     .            ,'PPQRST', 'QQRSTU', 'RRSTUV', 'SSTUVW', 'TTUVWX'     
     .            ,'UUVWXY', 'VVWXYZ', 'WWXYZ0', 'XXYZ01', 'YYZ012'     
     .            ,'ZZ0123', '001234', '112345', '223456', '334567'     
     .            ,'445678', '556789', '667890', '778901', '889012'     
     .            ,'990123'                                        /    
     .      ,CVALUE ,ERROR01,ERROR02,ERROR03,ERROR04                    
     .      ,ERROR05,ERROR06,ERROR07,ERROR08,ERROR09                    
     .      ,ERROR10,ERROR11/1.0E-6,11*0/                               

      I02I=COS(0.0)+1
      I02J=COS(0.0)*2
      I02K=TAN(0.0)+2
      I04A=ANINT(ABS(R04A))
      I04B=AINT(SIGN(R04A,R04B))
      I04C=MAX(I04A,I04B)
      I04D=MIN(I04A,I04C)
      I04E=ISHFT(I04D,   2)
      I04F=ISHFT(I04E,I02I)
      I04G=ISHFT(I04F,  -2)
      I04H(1)=1
      I04H(2)=3
      I04H(3)=5
      I04H(4)=7
      I04H(5)=9
      I04I=NOT(I04H)
      I04J=IBSET(I04G,   2)
      I04K=IBCLR(I04J,   3)
      L04A=BTEST(I04K,   4)
      L04B=I04A .LT. I04B     
      L04C=I04C .LE. I04D
      L04D=I04E .EQ. I04F
      L04E=I04G .GE. I04H
      L04F=I04I .GT. I04J
      L04G=I04A .NE. I04B
      L04H=.NOT.L04A .AND.  L04B .OR.
     .      L04C .NEQV. L04D .EQV. L04E
      C08A=C08B+CSQRT(CMPLX(R04C/1.0,
     .     R04D*MOD(I04I,2)))-C08C
      CH5A=CH5B(:,1)(3:5)//CH5A

      L01A=CH5A          .GT.CH6A(I02J:6)
      L01B=CH5A(:)(1:3)  .GE.CH6A(2:6)(I02K:4)

      L01C=CH5B(1,:)     .EQ.CH6B(I02J:6,2)
      L01D=CH5B(1,:)(1:3).GE.CH6B(I02J:6,2)(I02K:4)
      L01E=CH5B          .GT.CH6B(I02J:6,2:6)
      L01F=CH5B(:,:)(1:3).NE.CH6B(I02J:6,2:6)(I02K:4)

      DO I=1,5                                                          
        IF(L04F(I)             .NEQV. L04I(I)) ERROR01=ERROR01+1
        IF(L04G(I)             .NEQV. L04J(I)) ERROR02=ERROR02+1
        IF(L04H(I)             .NEQV. L04K(I)) ERROR03=ERROR03+1
        IF(I04I(I)              .NE.  I04L(I)) ERROR04=ERROR04+1
        IF(ABS(C08A(I)-C08D(I)) .GT. CVALUE  ) ERROR05=ERROR05+1
        IF(L01A(I)             .NEQV. L01G(I)) ERROR06=ERROR06+1
        IF(L01B(I)             .NEQV. L01H(I)) ERROR07=ERROR07+1
        IF(L01C(I)             .NEQV. L01I(I)) ERROR08=ERROR08+1
        IF(L01D(I)             .NEQV. L01J(I)) ERROR09=ERROR09+1
      ENDDO                                                             
      DO I=1,5                                                          
        DO J=1,5                                                        
          IF(L01E(J,I) .NEQV. L01K(J,I)) ERROR10=ERROR10+1        
          IF(L01F(J,I) .NEQV. L01L(J,I)) ERROR11=ERROR11+1
        ENDDO                                                           
      ENDDO                                                             
      IF(ERROR01 .EQ.0 .AND. ERROR02 .EQ. 0 .AND.                       
     .   ERROR03 .EQ.0 .AND. ERROR04 .EQ. 0 .AND.                       
     .   ERROR05 .EQ.0 .AND. ERROR06 .EQ. 0 .AND.                       
     .   ERROR07 .EQ.0 .AND. ERROR08 .EQ. 0 .AND.                       
     .   ERROR09 .EQ.0 .AND. ERROR10 .EQ. 0 .AND.                       
     .   ERROR11 .EQ.0                           ) THEN                 
        WRITE(6,*) 'OK'                           
      ELSE                                                              
        WRITE(6,*) 'NG'                           
      ENDIF                                                             

      STOP                                                              
      END                                                               
