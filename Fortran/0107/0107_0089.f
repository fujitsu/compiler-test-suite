      PROGRAM MAIN                                                   
      COMPLEX,DIMENSION(10)::A,D                                           
      COMPLEX B,C                                                      
      EQUIVALENCE (A,B)                                                
      DATA A,C/10*(1.0,2.0),(2.0,2.0)/                                 
      DATA D/(10.0,4.0),9*(2.0,4.0)/                                   

      A(1:10)=A(1:10)                                                  
      B=(3.0,0.0)+C                                                    
      A(1:10)=A(1:10)*2                                                

      DO 10 I=1,10                                                     
        IF (A(I) .NE. D(I)) THEN                                       
          WRITE (6,999)                                                
          WRITE (6,*) '"RIGHT => "',D                                  
          WRITE (6,*) '"RESULT" ',A                                    
          GOTO 20                                                      
        END IF                                                         
  10  CONTINUE                                                         
      WRITE (6,998)                                                    
  20  CONTINUE                                                         
 998  FORMAT (1H ,'**** OK ****')                           
 999  FORMAT (1H ,'**** NG ****')                           

      STOP                                                             
      END                                                              
