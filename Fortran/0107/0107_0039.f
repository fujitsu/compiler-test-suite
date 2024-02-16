      PROGRAM MAIN                                                  
      REAL,DIMENSION(10)::A,B                                              
      INTEGER*4::L,J                                                   
      DATA A/1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0/                 
      DATA B/1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0/                 
      DATA L/1.0/                                                      
                                                                       
      J=L*1073741824-2147483647                                        
      L=1073741825*L+J                                                 
                                                                       
      A(1:10)=B(L)                                                     
      I=INT(COS(0.0))                                                  
      B(1:10)=A(I)                                                     
                                                                       
      DO 10 II=1,10                                                    
        IF (A(II) .NE. 2.0) THEN                                       
          WRITE (6,999)                                                
          WRITE (6,*) '"RIGHT"    2.0'                                 
          WRITE (6,*) '"RESULT" ',A                                    
          GOTO  20                                                     
        END IF                                                         
        IF (B(II) .NE. 2.0) THEN                                       
          WRITE (6,998)                                                
          WRITE (6,*) '"RIGHT"    2.0'                                 
          WRITE (6,*) '"RESULT" ',B                                    
          GOTO  20                                                     
        END IF                                                         
  10  CONTINUE                                                         
      WRITE (6,997)                                                    
  20  CONTINUE                                                         
 997  FORMAT (1H ,'**** OK ****')                           
 998  FORMAT (1H ,'**** NG=B  ****')                           
 999  FORMAT (1H ,'**** NG=A  ****')                           
      STOP                                                             
      END                                                              
