      PROGRAM MAIN                                                    
      DATA N/10/                                                        

      LOGICAL*4  L1(10),L2(10),L3(10)                                   
      INTEGER*4  I1(10)                                                 
      REAL*4     R1(10),R2(10),R3(10)                                   
      REAL*8     RD1(10),RD2(10)                                        
      COMPLEX*8  C1(10),C2(10),C3(10)                                   
      DATA L1/5*.TRUE.,5*.FALSE./,I1/10*0/,R1/10*0./,J/5/,RD1/10*0./    
      DATA L2/10*.FALSE./,L3/2*.FALSE.,2*.TRUE.,6*.TRUE./               
      DATA R2/10*0./,C1/10*(0.,0.)/,C2/10*(2.,2.)/,C3/10*(1.,1.)/       
      DATA RD2/10*4./,R3/10*1./                                         

      LOGICAL*4  L11(10),L12(10)                                        
      INTEGER*4  I11(10)                                                
      REAL*4     R11(10),S2,S21                                         
      REAL*8     RD11(10),RD12(10),RD13(10)                             
      COMPLEX*8  C11(10)                                                
      COMPLEX*16 CD11(10),CD12(10),CS11                                 
      DATA L11/10*.FALSE./,L12/5*.TRUE.,5*.FALSE./                      
      DATA R11/5*0.,5*1./,RD11/5*0.,5*2./,S2/0./,C11/10*(0,0)/          
      DATA CD11/10*(0,0)/,CD12/10*(2,2)/,CS11/(1,1)/                    
      DATA RD13/1,2,3,1,2,3,1,2,3,1/,S21/0./                            
      DATA I11/1,2,3,4,5,6,7,8,9,10/                                    

      LOGICAL*4  L21(10) ,LS21,LS22                                     
      INTEGER*4  I21(10),I22(10)                                        
      REAL*4     R21(10),R22(10)                                        
      REAL*8     RD21(10),RD22(10)                                      
      COMPLEX*16 CD21(10),CD22(10)                                      
      DATA R21/1,2,3,4,5,6,7,8,9,10/,R22/2,2,2,5,5,5,8,8,8,10/          
      DATA I21/10*0/,RD21/10*0./,CD21/10*(0,0)/                         
      DATA CD22/10*(1,1)/,L21/10*.FALSE./,I22/1,2,3,4,5,6,7,8,9,10/     
      DATA LS21/.TRUE./,LS22/.FALSE./,S3/0/                             
      RD12 = 0
      RD22 = 0

      DO 10 I=1,N                                                       
        IF ( L1(I) ) THEN                                               
          I1(I) = I                                                     
          R1(J) = R1(J) + FLOAT(I)                                      
          RD1(I) = SQRT(RD2(I))                                         
          L2(I) = .NOT. L3(I)                                           
          IF ( L2(I) ) THEN                                             
            I1(I) = -I                                                  
            R2(J) = R2(J) - FLOAT(I)                                    
            C1(I) = C2(I) / C3(I)                                       
          ELSE                                                          
            I1(I) =  I * I                                              
            R3(J) = R3(J) * FLOAT(I)                                    
            C1(I) = C2(I) * C3(I)                                       
          ENDIF                                                         
        ELSE                                                            
          I1(I) = I*2                                                   
        ENDIF                                                           
  10  CONTINUE                                                          
      WRITE(6,*)  I1,R1,RD1,L2,R2,C1,R3                                 

      DO 20 I=1,N                                                       
        IF ( L11(I) .OR. L12(I) ) GO TO 21                              
          R11(I) = FLOAT(I)                                             
          RD11(I) = SQRT(DFLOAT(I))                                     
          IF ( RD11(I) .EQ. 2. ) GO TO 22                               
            S2 = S2 + R11(I)                                            
  22        C11(I11(I)) = R11(I)                                        
            IF ( I.GT. 5) GO TO 23                                      
              R11(I) = - I                                              
  23          GO TO 20                                                  
  21      CD11(I) = CD12(I) / CS11                                      
          IF ( I.GT. 3) GO TO 24                                        
            RD12(I) = RD11(I) ** RD13(I)                                
  24        L12(I)  = RD12(I) .EQ. DFLOAT(I)                            
            S21 = S21 - R11(I)                                          
  20  CONTINUE                                                          
      WRITE(6,*)  R11,RD11,S2,C11,CD12,RD12,L12,S21                     

      DO 30 I=1,N                                                       
        IF ( R21(I) - R22(I) ) 31,32,33                                 
  33      I21(I) = I                                                    
          RD22(I) = SQRT(DFLOAT(I))                                     
          IF ( RD22(I) - 3.0D0 ) 34,35,36                               
  34        RD21(I) = SQRT(RD22(I))                                     
            GO TO 30                                                    
  35        CD21(I) = CD22(I) + ( 2.,1.)                                
            GO TO 30                                                    
  36        L21(I22(I)) = LS21 .OR. LS22                                
            GO TO 30                                                    
  31      I21(I) = -I                                                   
          IF ( I21(I) + 4 ) 37,38,38                                    
  37        RD21(I) = SQRT(DFLOAT(I))                                   
            GO TO 30                                                    
  38        CONTINUE                                                    
            GO TO 30                                                    
  32      S3 = S3 + FLOAT(I)*R22(I)                                     
          GO TO 30                                                      
  30  CONTINUE                                                          
      WRITE(6,*) I21,R21,RD21,RD22,CD21,L21,S3                          
      STOP                                                              
      END                                                               
