      PROGRAM MAIN                                                   
      COMPLEX,DIMENSION(10)::A,B                                           
      DATA A,B/20*(1.0,2.0)/                                           

      A(1:10)=B(1:10)+A(1:10)                                          

      DO 10 I=1,10                                                     
        IF (A(I) .NE. (2.0,4.0)) THEN                                  
          WRITE (6,999)                                                
          WRITE (6,*) '"RIGHT => (2.0,4.0)"'                           
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
