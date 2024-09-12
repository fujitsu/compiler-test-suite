      PROGRAM MAIN                                                    
      REAL A(500),B(500),C(1000)                                        
      LOGICAL LA(500),LB(500),LC(1000),LD(1000)                         
      DATA A/500*0./,B/500*0./                                          
      DATA N/500/,LA/250*.TRUE.,250*.FALSE./,LB/250*.TRUE.,250*.FALSE./ 
      DATA C/1000*0./,LC/500*.TRUE.,500*.FALSE./                        
      DATA LD/500*.TRUE.,500*.FALSE./                                   

      DO 10 I=1,10                                                      
        IF(LA(I)) THEN                                                  
          IF(LB(I)) THEN                                                
            A(I) = 1.0                                                  
          ENDIF                                                         
        ELSE                                                            
        ENDIF                                                           
 10   CONTINUE                                                          

      DO 20 I=1,N                                                       
        IF(LA(I)) THEN                                                  
          DO 21 J=1,100                                                 
            A(J) = J                                                    
 21       CONTINUE                                                      
        ENDIF                                                           
 20   CONTINUE                                                          

      DO 30 I=1,N                                                       
        IF(LA(I)) THEN                                                  
          A(I) = B(I)                                                   
          GO TO 30                                                      
        ELSE                                                            
          A(I) = -B(I)                                                  
        ENDIF                                                           
 30   CONTINUE                                                          

      DO 40 I=1,1000                                                    
        IF(LC(I)) THEN                                                  
          IF(LD(I)) THEN                                                
            C(I) = I                                                    
          ENDIF                                                         
        ENDIF                                                           
 40   CONTINUE                                                          

      DO 50 I=1,500                                                     
        IF(LA(I)) THEN                                                  
          A(I) = I                                                      
        ELSE                                                            
          B(I) = -I                                                     
        ENDIF                                                           
 50   CONTINUE                                                          

      DO 60 I=1,500                                                     
        ASSIGN 70 TO K                                                  
 60   CONTINUE                                                          

      DO 70 I=1,500                                                     
        IF(LA(I)) A(I) = B(I)                                           
 70   CONTINUE                                                          
      WRITE(6,*) A                                                      
      WRITE(6,*) B                                                      
      STOP                                                              
      END                                                               
