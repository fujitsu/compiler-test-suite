      PROGRAM MAIN
      REAL,DIMENSION(10)::A1,A2,C,D                                         
                                                                        
      DATA A1,A2,C,D/40*1.0/                                            
                                                                        
        A1=A1+2.0                                                       
        A1=A1+3.0                                                       
                                                                        
        A2=1.0                                                          
        A2=A2+2.0                                                       
        A2=A2+3.0                                                       
                                                                        
        C=C+D                                                           
                                                                        
        DO 100 I=1,10                                                   
          IF(A1(I) .NE. 6.0) THEN                                       
            WRITE(6,999)                                                
            GOTO 200                                                    
          END IF                                                        
          IF(A2(I) .NE. 6.0) THEN                                       
            WRITE(6,999)                                                
            GOTO 200                                                    
          END IF                                                        
          IF(C(I) .NE. 2.0) THEN                                        
            WRITE(6,999)                                                
            GOTO 200                                                    
          END IF                                                        
 100  CONTINUE                                                          
        WRITE(6,998)                                                    
 200  CONTINUE                                                          
 998    FORMAT(1H ,'**** OK ****')                           
 999    FORMAT(1H ,'**** NG ****')                           
        STOP                                                            
      END                                                               
