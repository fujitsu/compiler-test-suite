
        INTEGER*4 ERROR,I,J,K,S_DVT1,S_A,V_A                            
        DIMENSION S_DVT1(10),S_A(10),V_A(10)                            
        DATA      S_A/0,1,2,3,4,5,6,7,8,9/
        DATA      V_A/0,1,2,3,4,5,6,7,8,9/
        DATA      ERROR/0/                                              

          J=AINT(2.6)                                                   
          K=J+5                                                         
          DO I=J,K,1                                                    
            S_DVT1(I)=S_A(I)                                            
          END DO                                                        
          DO I=J,K,1                                                    
            S_A(I+1)=S_DVT1(I)                                          
          END DO                                                        

          J=AINT(2.6);K=J+5;V_A(J+1:K+1)=V_A(J:K)                       

          DO I=1,10,1                                                   
            IF(V_A(I) .NE. S_A(I)) THEN                                 
              ERROR=ERROR+1                                             
            END IF                                                      
          END DO                                                        
          IF(ERROR .EQ. 0) THEN                                         
            WRITE(6,*) 'OK'
          ELSE                                                          
            WRITE(6,*) 'NG'
          END IF                                                        

          STOP                                                          
      END
