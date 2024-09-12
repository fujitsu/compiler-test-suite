      PROGRAM MAIN                                                    
      DATA N/10/                                                        

      INTEGER*4  I11(10)                                                
      REAL*4     R11(10)                                                
      REAL*8     RD11(10),RD12(10),RD13(10),RD14(10),RD15(10),          
     *           RD16(10),RD17(10),RD18(10),RD19(10),RD20(10),          
     *           RD21(10),RD22(10),RDV11,RDV13                          
      COMPLEX*8  C11(10)                                                
      COMPLEX*16 CD11(10)                                               
      DATA RDV11/1.5/,RD14/1,2,3,4,5,6,7,8,9,10/                        
      DATA I11/1,2,1,2,1,2,3,2,1,2/                                     
      DATA R11/10,9,8,7,6,5,4,3,2,1/                                    
      DATA C11/2*(1,1),3*(2,2),4*(3,3),(2,1)/                           
      DATA CD11/(2,1),4*(3,3),3*(2,2),2*(1,1)/                          

      REAL*8     RD30(10),RD31(10),RD32(10),RD33(10),RD34(10),          
     *           RD35(10),RD36(10),RD37(10),RD38(10),RD39(10),          
     *           RD40(10),RDV30,RDV31,RDV32,RDV33,RDV34                 
      COMPLEX*16 CD30(10)                                               
      DATA RD32/1.1,2.2,3.3,4.4,5.5,6.6,7.7,8.8,9.9,10.5/               
      DATA RD34/11,-12,13,-14,15,-16,-17,18,-19,20/                     
      DATA RD36/11,-12,13,-14,15,-16,-17,18,-19,20/                     
      DATA RDV30/5/,RDV31/2.5/                                          
      DATA RDV32/0.5/,RDV33/12.5/,RDV34/0./                             
      DATA CD30/2*(1,2),3*(3,4),3*(2,2),2*(2,1)/                        
      LOGICAL*4 L41(10)                                                 
      DATA L41/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,                    
     *         .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./                   

      REAL*8     RD41(10),RD42(10),RD43(10),RD44(10),RD45(10),          
     *           RD46(10),RD47(10),RD48(10),RD49(10),RD50(10),          
     *           RD51(10),RD52(10)                                      
      DATA RD41,RD42,RD43,RD44,RD45,RD46/60*0./                         
      DATA RD47,RD48,RD49,RD50,RD51,RD52/60*0./                         

      REAL*8     RD60(10),RD61(10),RD62(10),RD63(10),RD64(10),          
     *           RD65(10),RD66(10),RD67(10),RD68(10),RD69(10),          
     *           RD70(10),RDV60,RDV61,RDV62,RDV63,RDV64                 
      COMPLEX*16 CD60(10)                                               
      DATA RD60,RD61,RD63,RD65,RD67,RD68,RD69,RD70/80*0./               
      DATA RD62/1.1,2.2,3.3,4.4,5.5,6.6,7.7,8.8,9.9,10.9/               
      DATA RD64/1.4,2.5,3.6,4.4,5.6,6.5,7.4,8.5,9.4,10.6/               
      DATA RD66/4.4,8.8,3.6,4.4,5.6,6.5,7.4,8.5,9.4,10.6/               
      DATA RDV60/4/,RDV61/-2./,RDV62/0.5/,RDV63/23./,RDV64/0./          
      DATA CD60/2*(1,2),3*(3,4),3*(2,2),2*(2,1)/                        

      RDV13 = 0.                                                        
      DO 10 I=1,N                                                       
        RD11(I) = 1.                                                    
        RD12(I) = RDV11                                                 
        RD13(I) = RD14(I)                                               
        RD15(I) = I                                                     
        RD16(I) = 2. + RD12(I)                                          
        RD17(I) = RD13(I) + 3.                                          
        RD18(I) = RD14(I) * RD15(I)                                     
        RD19(I) = I11(I)                                                
        RD20(I) = R11(I)                                                
        RD21(I) = C11(I)                                                
        RD22(I) = CD11(I)                                               
        RDV13   = RDV13   +                                             
     *          ( RD11(I) + RD12(I) - RD13(I) + RD14(I) - RD15(I)       
     *          + RD16(I) - RD17(I) + RD18(I) - RD19(I)                 
     *          + RD20(I) - RD21(I) + RD22(I) )                         
  10  CONTINUE                                                          
      WRITE(6,*)  RD11                                                  
      WRITE(6,*)  RD12                                                  
      WRITE(6,*)  RD13                                                  
      WRITE(6,*)  RD15                                                  
      WRITE(6,*)  RD16                                                  
      WRITE(6,*)  RD17                                                  
      WRITE(6,*)  RD18                                                  
      WRITE(6,*)  RD19                                                  
      WRITE(6,*)  RD20                                                  
      WRITE(6,*)  RD21                                                  
      WRITE(6,*)  RD22                                                  
      WRITE(6,*)  RDV13                                                 

      DO 20 I=1,N                                                       
        RD30(I) = DBLE(I)                                               
        RD31(I) = DINT(RD32(I))                                         
        RD33(I) = RD31(I) + DNINT(RD34(I))                              
        RD35(I) = DABS(RD33(I)) - DMOD(RD36(I),RDV30)                   
        RD37(I) = DSIGN(RDV31,RD35(I))                                  
        RD38(I) = DDIM(RD37(I),RDV32)                                   
        RD39(I) = DMAX1(RD30(I),RD31(I),RD33(I),RDV33)                  
        RD40(I) = DIMAG(CD30(I))                                        
        RDV34 = RDV34 + ( RD30(I) + RD31(I) + RD32(I) + RD33(I) +       
     *           RD35(I) + RD37(I) + RD38(I) + RD39(I) + RD40(I))       
  20  CONTINUE                                                          
      WRITE(6,*) RD30                                                   
      WRITE(6,*) RD31                                                   
      WRITE(6,*) RD33                                                   
      WRITE(6,*) RD35                                                   
      WRITE(6,*) RD37                                                   
      WRITE(6,*) RD38                                                   
      WRITE(6,*) RD39                                                   
      WRITE(6,*) RD40                                                   
      WRITE(6,*) RDV34                                                  

      RDV13 = 0.                                                        
      DO 30 I=1,N                                                       
        IF ( L41(I)) GO TO 30                                           
        RD41(I) = 1.                                                    
        RD42(I) = RDV11                                                 
        RD43(I) = RD44(I)                                               
        RD45(I) = I                                                     
        RD46(I) = 2. + RD42(I)                                          
        RD47(I) = RD43(I) + 3.                                          
        RD48(I) = RD44(I) * RD45(I)                                     
        RD49(I) = I11(I)                                                
        RD50(I) = R11(I)                                                
        RD51(I) = C11(I)                                                
        RD52(I) = CD11(I)                                               
        RDV13   = RDV13 + ( RD41(I) + RD42(I) - RD43(I) + RD44(I)       
     *            - RD45(I) + RD46(I) - RD47(I) + RD48(I)               
     *            - RD49(I) + RD50(I) - RD51(I) + RD52(I))              
  30  CONTINUE                                                          
      WRITE(6,*)  RD41                                                  
      WRITE(6,*)  RD42                                                  
      WRITE(6,*)  RD43                                                  
      WRITE(6,*)  RD45                                                  
      WRITE(6,*)  RD46                                                  
      WRITE(6,*)  RD47                                                  
      WRITE(6,*)  RD48                                                  
      WRITE(6,*)  RD49                                                  
      WRITE(6,*)  RD50                                                  
      WRITE(6,*)  RD51                                                  
      WRITE(6,*)  RD52                                                  
      WRITE(6,*)  RDV13                                                 

      RDV64 = 0.                                                        
      DO 40 I=1,N                                                       
        IF (L41(I)) THEN                                                
          RD60(I) = DBLE(I)                                             
          RD61(I) = DINT(RD62(I))                                       
          RD63(I) = RD61(I) + DNINT(RD64(I))                            
          RD65(I) = DABS(RD63(I)) - DMOD(RD66(I),RDV60)                 
          RD67(I) = DSIGN(RDV61,RD65(I))                                
          RD68(I) = DDIM(RD67(I),RDV62)                                 
          RD69(I) = DMAX1(RD60(I),RD61(I),RD63(I),RDV63)                
          RD70(I) = DIMAG(CD60(I))                                      
          RDV64 = RDV64 + ( RD60(I) + RD61(I) + RD62(I) + RD63(I) +     
     *            RD65(I) + RD67(I) + RD68(I) + RD69(I) + RD70(I))      
        ENDIF                                                           
  40  CONTINUE                                                          
      WRITE(6,*) RD60                                                   
      WRITE(6,*) RD61                                                   
      WRITE(6,*) RD63                                                   
      WRITE(6,*) RD65                                                   
      WRITE(6,*) RD67                                                   
      WRITE(6,*) RD68                                                   
      WRITE(6,*) RD69                                                   
      WRITE(6,*) RD70                                                   
      IV34 = INT(RDV64)                                                 
      WRITE(6,*) IV34                                                   
      STOP                                                              
      END                                                               
