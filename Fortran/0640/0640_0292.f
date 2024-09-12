      PROGRAM MAIN                                                    
      DATA N/10/                                                        

      INTEGER*4  I11(10)                                                
      REAL*4     R11(10),R12(10),R13(10),R14(10),R15(10),               
     *           R16(10),R17(10),R18(10),R19(10),R20(10),               
     *           R21(10),R22(10)                                        
      REAL*8     RD11(10)                                               
      COMPLEX*8  C11(10)                                                
      COMPLEX*16 CD11(10)                                               
      DATA RV11/1.5/,R14/1,2,3,4,5,6,7,8,9,10/,RV13/0./                 
      DATA I11/1,2,1,2,1,2,3,2,1,2/                                     
      DATA RD11/10,9,8,7,6,5,4,3,2,1/                                   
      DATA C11/2*(1,1),3*(2,2),4*(3,3),(2,1)/                           
      DATA CD11/(2,1),4*(3,3),3*(2,2),2*(1,1)/                          

      REAL*4     R30(10),R31(10),R32(10),R33(10),R34(10),               
     *           R35(10),R36(10),R37(10),R38(10),R39(10),               
     *           R40(10)                                                
      COMPLEX*8  C30(10)                                                
      DATA R32/1.1,2.2,3.3,4.4,5.5,6.6,7.7,8.8,9.9,10.5/                
      DATA R34/1.4,2.5,3.6,4.4,5.5,6.6,7.4,8.5,9.6,10.0/                
      DATA R36/11,-12,13,-14,15,-16,-17,18,-19,20/,RV30/5/,RV31/2.5/    
      DATA RV32/0.5/,RV33/12.5/,RV34/0./,R31/10*0./                     
      DATA C30/2*(1,2),3*(3,4),3*(2,2),2*(2,1)/                         
      LOGICAL*4 L41(10)                                                 
      DATA L41/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,                    
     *         .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./                   

      REAL*4     R41(10),R42(10),R43(10),R45(10),                       
     *           R46(10),R47(10),R48(10),R49(10),R50(10),               
     *           R51(10),R52(10)                                        
      DATA R41,R42,R43,R45,R46,R47,R48,R49,R50,R51,R52/110*0./          

      REAL*4     R60(10),R61(10),R62(10),R63(10),                       
     *           R65(10),R67(10),R68(10),R69(10),                       
     *           R70(10)                                                
      DATA R60,R61,R62,R63,R65,R67,R68,R69,R70/90*0./                   

      DO 10 I=1,N                                                       
        R11(I) = 1.                                                     
        R12(I) = RV11                                                   
        R13(I) = R14(I)                                                 
        R15(I) = I                                                      
        R16(I) = 2. + R12(I)                                            
        R17(I) = R13(I) + 3.                                            
        R18(I) = R14(I) * R15(I)                                        
        R19(I) = I11(I)                                                 
        R20(I) = RD11(I)                                                
        R21(I) = C11(I)                                                 
        R22(I) = CD11(I)                                                
        RV13 = RV13 + ( R11(I) + R12(I) - R13(I)                        
     *         + R14(I) - R15(I) + R16(I) + R17(I) + R18(I) - R19(I)    
     *         + R20(I) - R21(I) + R22(I))                              
  10  CONTINUE                                                          
      WRITE(6,*)  R11                                                   
      WRITE(6,*)  R12                                                   
      WRITE(6,*)  R13                                                   
      WRITE(6,*)  R15                                                   
      WRITE(6,*)  R16                                                   
      WRITE(6,*)  R17                                                   
      WRITE(6,*)  R18                                                   
      WRITE(6,*)  R19                                                   
      WRITE(6,*)  R20                                                   
      WRITE(6,*)  R21                                                   
      WRITE(6,*)  R22                                                   
      WRITE(6,*)  RV13                                                  

      DO 20 I=1,N                                                       
        R30(I) = REAL(I)                                                
        R33(I) = R31(I) + ANINT(R34(I))                                 
        R35(I) = ABS(R33(I)) - AMOD(R36(I),RV30)                        
        R37(I) = SIGN(RV31,R35(I))                                      
        R38(I) = DIM(R37(I),RV32)                                       
        R39(I) = AMAX1(R30(I),R31(I),R33(I),RV33)                       
        R40(I) = IMAG(C30(I))                                           
        RV34   = RV34 + ( R30(I) + R31(I) + R32(I) + R33(I) +           
     *           R35(I) + R37(I) + R38(I) + R39(I) + R40(I))            
  20  CONTINUE                                                          
      WRITE(6,*) R30                                                    
      WRITE(6,*) R31                                                    
      WRITE(6,*) R33                                                    
      WRITE(6,*) R35                                                    
      WRITE(6,*) R37                                                    
      WRITE(6,*) R38                                                    
      WRITE(6,*) R39                                                    
      WRITE(6,*) R40                                                    
      WRITE(6,10000) RV34                                               
10000 FORMAT(' RV34 = ',F10.3)                                          

      RV13 = 0.                                                         
      DO 30 I=1,N                                                       
        IF ( L41(I)) GO TO 30                                           
        R41(I) = 1.                                                     
        R42(I) = RV11                                                   
        R43(I) = R14(I)                                                 
        R45(I) = I                                                      
        R46(I) = 2. + R42(I)                                            
        R47(I) = R43(I) + 3.                                            
        R48(I) = R14(I) * R45(I)                                        
        R49(I) = I11(I)                                                 
        R50(I) = RD11(I)                                                
        R51(I) = C11(I)                                                 
        R52(I) = CD11(I)                                                
        RV13 =   RV13   +                                               
     *         ( R41(I) + R42(I) - R43(I) + R14(I) - R45(I) + R46(I)    
     *         - R47(I) + R48(I) - R49(I) + R50(I) - R51(I) + R52(I))   
  30  CONTINUE                                                          
      WRITE(6,*)  R41                                                   
      WRITE(6,*)  R42                                                   
      WRITE(6,*)  R43                                                   
      WRITE(6,*)  R45                                                   
      WRITE(6,*)  R46                                                   
      WRITE(6,*)  R47                                                   
      WRITE(6,*)  R48                                                   
      WRITE(6,*)  R49                                                   
      WRITE(6,*)  R50                                                   
      WRITE(6,*)  R51                                                   
      WRITE(6,*)  R52                                                   
      WRITE(6,*)  RV13                                                  

      RV34 = 0.                                                         
      DO 40 I=1,N                                                       
        IF (L41(I)) THEN                                                
          R60(I) = REAL(I)                                              
          R63(I) = R61(I) + ANINT(R34(I))                               
          R65(I) = ABS(R63(I)) - AMOD(R36(I),RV30)                      
          R67(I) = SIGN(RV31,R65(I))                                    
          R68(I) = DIM(R67(I),RV32)                                     
          R69(I) = AMAX1(R60(I),R61(I),R63(I),RV33)                     
          R70(I) = IMAG(C30(I))                                         
          RV34   = RV34 + ( R60(I) + R61(I) + R62(I) + R63(I) +         
     *            R65(I) + R67(I) + R68(I) + R69(I) + R70(I))           
        ENDIF                                                           
  40  CONTINUE                                                          
      WRITE(6,*) R60                                                    
      WRITE(6,*) R61                                                    
      WRITE(6,*) R63                                                    
      WRITE(6,*) R65                                                    
      WRITE(6,*) R67                                                    
      WRITE(6,*) R68                                                    
      WRITE(6,*) R69                                                    
      WRITE(6,*) R70                                                    
      WRITE(6,*) RV34                                                   
      STOP                                                              
      END                                                               
