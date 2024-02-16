      PROGRAM MAIN                                                   
      REAL,DIMENSION(10)::A                                                 
      DATA A/1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0/                  
      DATA I/1/                                                         
      K=I*2                                                             
      J=K*4+I                                                           
      IF (I .GT. 5) GOTO 10                                             
                                                                        
      I=I+J                                                             
                                                                        
 10   I=I-K*4                                                           
      A(1:10)=A(I)                                                      
                                                                        
      DO 20 L=1,10                                                      
        IF (A(I) .NE. 2.0) THEN                                         
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
