      PROGRAM MAIN                                                    
      REAL A(100),B(100),C(100),D(100),E(100),F(100),G(100)             
      REAL P(100,100),Q(100,100),R(100,100)                             
      LOGICAL LA(100),LB(100),LC(100)                                   
      DATA A/100*0./,B/100*0./,C/100*0./,D/100*0./,E/100*0./            
      DATA LA/50*.TRUE.,50*.FALSE./,LB/50*.TRUE.,50*.FALSE./            
      DATA LC/50*.TRUE.,50*.FALSE./                                     

      DO 10 I=1,100                                                     
        IF(LA(I)) THEN                                                  
          A(I) = 1.0                                                    
          DO 11 J=1,100                                                 
            P(I,J) = I+J                                                
 11       CONTINUE                                                      
          B(I) = I                                                      
        ENDIF                                                           
 10   CONTINUE                                                          

      DO 100 I=1,100                                                    
        IF(LC(I)) THEN                                                  
          F(I) = I                                                      
          IF(LB(I)) GO TO 110                                           
          DO 111 J=1,100                                                
            P(I,J) = I+J                                                
111       CONTINUE                                                      
110       B(I) = I                                                      
        ENDIF                                                           
100   CONTINUE                                                          

      DO 20 I=1,100                                                     
        IF(LA(I)) THEN                                                  
          A(I) = 1.0                                                    
          DO 21 J=1,100                                                 
            P(I,J) = I+J                                                
 21       CONTINUE                                                      
          GO TO 23                                                      
        ELSE                                                            
          C(I) = 1.0                                                    
          DO 22 J=1,100                                                 
            Q(I,J) = I                                                  
 22       CONTINUE                                                      
          D(I) = I                                                      
        ENDIF                                                           
 23     CONTINUE                                                        
 20   CONTINUE                                                          

      DO 30 I=1,100                                                     
        IF(LA(I)) GO TO 33                                              
          IF(LB(I)) GO TO 31                                            
            GO TO 30                                                    
 33     CONTINUE                                                        
          IF(LC(I)) GO TO 31                                            
            GO TO 30                                                    
 31     DO 35 J=1,100                                                   
 35       R(I,J) = P(I,J)                                               
        E(I) = F(I)                                                     
        G(I) = SQRT(E(I))                                               
 30   CONTINUE                                                          
      WRITE(6,*) (A(I),I=1,10)                                          
      WRITE(6,*) (R(I,1),I=1,10)                                        
      STOP                                                              
      END                                                               
