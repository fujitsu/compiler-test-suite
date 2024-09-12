      PROGRAM MAIN                                                    
      REAL A(192)/192*0./                                               
      LOGICAL M(192)/64*.TRUE.,64*.FALSE.,64*.TRUE./                    
      IP=0                                                              
      DO 10 K=1,192                                                     
        IF(M(K)) THEN                                                   
         IP=IP+1                                                        
         A(IP)=K                                                        
        ENDIF                                                           
  10  CONTINUE                                                          
      WRITE(6,*) IP                                                     
      DO 20 K=192,1,-1                                                  
  20   IF(A(K).NE.0) GOTO 21                                            
  21  WRITE(6,999) K,A(K)                                                 
 999  FORMAT(10G20.6)                                                 
      END                                                               
