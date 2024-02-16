      PROGRAM MAIN                                                   
      INTEGER I,J                                                       
      REAL,DIMENSION(10)::A                                                 
      DATA A/1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0/                  
      DATA I,J/2*1/                                                     
                                                                        
      CALL SUB(J,I)                                                     
      A(1:10)=A(I)                                                      
                                                                        
      DO 10 II=1,10                                                     
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
                                                                        
      SUBROUTINE SUB(K,L)                                               
      INTEGER K,L                                                       
      K=L+K                                                             
      END
