      PROGRAM MAIN
      REAL,DIMENSION(10)::A,B                                               
      DATA A/1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0/                  
      DATA B/1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0/                  
                                                                        
      I=INT(COS(0.0))                                                   
      A(1:10)=B(I)                                                      
      I=I+2                                                             
      B(1:10)=A(I)                                                      
                                                                        
      DO 10 I=1,10                                                      
        IF (A(I) .NE. 1.0) THEN                                         
          WRITE (6,999)                                                 
          WRITE (6,*) A                                                 
          GOTO 20                                                       
        END IF                                                          
        IF (B(I) .NE. 1.0) THEN                                         
          WRITE (6,999)                                                 
          WRITE (6,*) B                                                 
          GOTO 20                                                       
        END IF                                                          
  10  CONTINUE                                                          
      WRITE (6,998)                                                     
  20  CONTINUE                                                          
 998  FORMAT(1H ,'**** OK ****')                             
 999  FORMAT(1H ,'**** NG ****')                             
      STOP                                                              
      END                                                               
