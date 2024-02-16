      PROGRAM MAIN                                                   
      REAL,DIMENSION(10)::A,B                                               
      DATA A/1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0/                  
      DATA B/7*10.0,8.0,9.0,10.0/                                       
                                                                        
      J=1                                                               
      DO 10 I=7,1,-2                                                    
        J=J+2                                                           
        A(1:I)=A(I+J)                                                   
 10   CONTINUE                                                          
                                                                        
      DO 20 K=1,10                                                      
        IF (A(K) .NE. B(K)) THEN                                        
          WRITE (6,999)                                                 
          GOTO 30                                                       
        END IF                                                          
 20   CONTINUE                                                          
      WRITE (6,998)                                                     
 30   CONTINUE                                                          
998   FORMAT (1H ,'**** OK ****')                            
999   FORMAT (1H ,'**** NG ****')                            
      STOP                                                              
      END                                                               
