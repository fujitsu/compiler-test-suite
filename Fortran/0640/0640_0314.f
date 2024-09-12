      PROGRAM MAIN                                                    
      REAL      A(10),B(10),C(10),D(10)                                 
      LOGICAL*4 LA(10),LB(10),LC(10),LD(10)                             
      DATA A/1,2,3,4,5,6,7,8,9,10/                                      
      DATA B/-4,-3,-2,-1,0,1,2,3,4,5/                                   
      DATA C/-4,-3,-2,-1,0,1,2,3,4,5/                                   
      DATA D/-4,3,-2,-1,0,1,-2,3,-4,5/                                  
      DATA LA/5*.TRUE.,5*.FALSE./,N/10/                                 
      DATA LB/5*.FALSE.,5*.FALSE./                                      
      DATA LC/5*.TRUE.,5*.FALSE./                                       
      DATA LD/2*.TRUE.,2*.FALSE.,2*.TRUE.,2*.FALSE.,2*.TRUE./           

      DO 10 I=1,N                                                       
        IF ( LA(I) ) THEN                                               
          IF ( LB(I) ) THEN                                             
            IF ( LC(I) ) THEN                                           
              A(I) = B(I)                                               
            ENDIF                                                       
          ENDIF                                                         
        ENDIF                                                           
        IF ( A(I).NE.B(I)) THEN                                         
        ELSE                                                            
          IF(LA(I)) THEN                                                
            C(I) = D(I)                                                 
          ELSE                                                          
          ENDIF                                                         
        ENDIF                                                           
 10   CONTINUE                                                          
      WRITE(6,*) ' A  = ',A                                             
      WRITE(6,*) ' C  = ',C                                             
      DO 11 I=1,N                                                       
        IF ( LA(I) ) THEN                                               
        ELSE                                                            
        ENDIF                                                           
        IF(LB(I)) THEN                                                  
        ELSE                                                            
        ENDIF                                                           
        IF ( A(I).NE.B(I)) THEN                                         
          IF(LA(I)) THEN                                                
            C(I) = D(I)                                                 
          ELSE                                                          
          ENDIF                                                         
        ELSE                                                            
        ENDIF                                                           
 11   CONTINUE                                                          
      WRITE(6,*) ' A  = ',A                                             
      WRITE(6,*) ' C  = ',C                                             

      DO 20 I=1,N                                                       
        IF(LB(I)) THEN                                                  
         CONTINUE                                                       
         CONTINUE                                                       
         CONTINUE                                                       
        ELSE                                                            
         A(I) = B(I)                                                    
         CONTINUE                                                       
        ENDIF                                                           
        CONTINUE                                                        
        C(I) = D(I)                                                     
        CONTINUE                                                        
 20   CONTINUE                                                          
      WRITE(6,*) ' A = ' ,A                                             
      DO 21 I=1,N                                                       
        IF(LB(I)) THEN                                                  
         CONTINUE                                                       
22       CONTINUE                                                       
         CONTINUE                                                       
        ELSE                                                            
         A(I) = B(I)                                                    
         CONTINUE                                                       
        ENDIF                                                           
23      CONTINUE                                                        
        C(I) = D(I)                                                     
        CONTINUE                                                        
24      CONTINUE                                                        
25      CONTINUE                                                        
        CONTINUE                                                        
 21   CONTINUE                                                          
      WRITE(6,*) ' A = ' ,A                                             
      WRITE(6,*) ' C = ' ,D                                             

      DO 30 I=1,N                                                       
        GO TO 31                                                        
 31     A(I) = B(I)                                                     
        GO TO 32                                                        
 32     CONTINUE                                                        
        GO TO 33                                                        
 33     C(I) = D(I)                                                     
        GO TO 34                                                        
 34     GO TO 35                                                        
 35     GO TO 36                                                        
 36     A(I) = C(I)                                                     
        IF(LA(I)) THEN                                                  
          A(I) = B(I)                                                   
          IF(LD(I)) THEN                                                
            GO TO 37                                                    
          ELSE                                                          
            GO TO 38                                                    
          ENDIF                                                         
 37       C(I) = D(I)                                                   
          GO TO 30                                                      
 38       CONTINUE                                                      
        ELSE                                                            
          GO TO 39                                                      
 39       GO TO 30                                                      
        ENDIF                                                           
 30   CONTINUE                                                          
      WRITE(6,*) ' A = ',A                                              
      WRITE(6,*) ' C = ',C                                              
      STOP                                                              
      END                                                               
