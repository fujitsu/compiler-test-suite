      PROGRAM MAIN                                                    
      DATA N/10/                                                        

      LOGICAL*4  L1(10)                                                 
      INTEGER*4  I1(10)                                                 
      REAL*4     R1(10),R2(10)                                          
      REAL*8     RD1(10),RD2(10)                                        
      DATA L1/5*.TRUE.,5*.FALSE./,I1/10*0/,R1/10*0./,RD1/10*0./         
      DATA R2/10*1./                                                    
      DATA RD2/10*4./                                                   

      LOGICAL*4  L11(10),L12(10)                                        
      REAL*4     R11(10),S21                                            
      REAL*8     RD11(10),RD12(10),RD13(10)                             
      DATA L11/5*.FALSE.,5*.TRUE./                                      
      DATA R11/5*0.,5*1./,RD11/5*0.,5*2./                               
      DATA RD13/1,2,3,1,2,3,1,2,3,1/,L12/10*.FALSE./,S21/0./            

      LOGICAL*4  L31(10),L32(10),L33(10),L34(10),L35(10),L36(10),L37(10)
      REAL*8     RD21(10)                                               
      DATA L31,L32,L33,L34,L35,L36,L37/70*.TRUE./,RD21/10*0./           

      DO 10 I=1,N                                                       
        IF ( L1(I) ) THEN                                               
          I1(I) = I                                                     
          R1(I) = R2(I) + FLOAT(I)                                      
          RD1(I) = SQRT(RD2(I))                                         
        ELSE                                                            
          GO TO 11                                                      
        ENDIF                                                           
  10  CONTINUE                                                          
  11  WRITE(6,*)  I,I1,R1,RD1                                           

      DO 20 I=1,N                                                       
        IF ( L11(I) .OR. L12(I) ) GO TO 21                              
          R11(I) = FLOAT(I)                                             
          RD11(I) = SQRT(DFLOAT(I))                                     
          GO TO 22                                                      
  21      DO 25 J=1,N                                                   
            RD12(J) = SIN(RD13(J))                                      
  25      CONTINUE                                                      
          GO TO 20                                                      
  22      S21 = S21 - R11(I)                                            
  20  CONTINUE                                                          
      WRITE(6,*)  R11,RD11,RD12,S21                                     

      DO 30 I=1,N                                                       
        IF ( L31(I) ) THEN                                              
          IF ( L32(I) ) THEN                                            
            IF ( L33(I) ) THEN                                          
              IF ( L34(I) ) THEN                                        
                IF ( L35(I) ) THEN                                      
                  IF ( L36(I) ) THEN                                    
                    IF ( L37(I) ) THEN                                  
                       RD21(I) = SQRT(DFLOAT(I))                        
                    ENDIF                                               
                  ENDIF                                                 
                ENDIF                                                   
              ENDIF                                                     
            ENDIF                                                       
          ENDIF                                                         
        ENDIF                                                           
  30  CONTINUE                                                          
      WRITE(6,*) RD21                                                   
      STOP                                                              
      END                                                               
