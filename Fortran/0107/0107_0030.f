      PROGRAM MAIN                                                   
      REAL,DIMENSION(10)::A                                                 
      INTEGER X,Y                                                       
      EQUIVALENCE (X,Y)                                                 
      DATA A/1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0/                  
      DATA Y/1.0/                                                       
                                                                        
      DO 10 I=1,5,1                                                     
        X=I+1                                                           
        A(I:10)=A(X)                                                    
 10   CONTINUE                                                          
                                                                        
      DO 20 J=1,10                                                      
        IF (A(J) .NE. 2.0) THEN                                         
          WRITE (6,999)                                                 
          WRITE (6,*) 'A(',A,')'                                        
          WRITE (6,*) '"RIGHT" 2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0' 
          GOTO 30                                                       
        END IF                                                          
 20   CONTINUE                                                          
      WRITE (6,998)                                                     
 30   CONTINUE                                                          
998   FORMAT (1H ,'**** OK ****')                            
999   FORMAT (1H ,'**** NG ****')                            
      STOP                                                              
      END                                                               
