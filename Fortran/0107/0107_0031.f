      PROGRAM MAIN                                                   
      CHARACTER*40 C                                                    
      REAL,DIMENSION(10)::A                                                 
      DATA A/1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0/                  
                                                                        
      I=INT(COS(0.0))                                                   
      IF (I .NE. 1) I=1                                                 
                                                                        
      WRITE(6,*) I                                                      
      C='(1H ,"A  ",10F3.1)'                                    
      WRITE(6,C) A                                                      
                                                                        
      A(1:10)=A(I)                                                      
                                                                        
      DO 10 J=1,10                                                      
        IF (A(I) .NE. 1.0) THEN                                         
          WRITE (6,999)                                                 
          GOTO 20                                                       
        END IF                                                          
 10   CONTINUE                                                          
      WRITE (6,998)                                                     
 20   CONTINUE                                                          
998   FORMAT (1H ,'**** OK ****')                            
999   FORMAT (1H ,'**** NG ****')                            
      STOP                                                              
      END                                                               
