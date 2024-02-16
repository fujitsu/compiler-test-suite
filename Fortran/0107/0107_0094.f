      PROGRAM MAIN                                                  
      REAL A(10),A1(10)                                                
      DATA A/-4.0,-3.0,-2.0,-1.0,0.0,1.0,2.0,3.0,4.0,5.0/              
      DATA A1/-4.0,-3.0,-2.0,-1.0,-4.0,-3.0,-2.0,-1.0,0.0,5.0/         
      DATA I/1.0/                                                      
                                                                       
      A(5:9:I)=A(1:5:I)                                                
                                                                       
      DO 10 J=1,10                                                     
        IF(A(J) .NE. A1(J)) THEN                                       
          WRITE (6,999)                                                
          GOTO 20                                                      
        END IF                                                         
  10  CONTINUE                                                         
      WRITE (6,998)                                                    
  20  CONTINUE                                                         
 998  FORMAT(1H ,'**** OK ****')                            
 999  FORMAT(1H ,'**** NG **** ',1H ,                       
     1                     /,1H ,A1,'(',10(1H ,F5.2),')')              
      STOP                                                             
      END                                                              
