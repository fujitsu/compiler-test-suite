      PROGRAM MAIN                                                  
                                                                       
      CALL SUB01                                                     
      CALL SUB02                                                     
      CALL SUB03                                                     
      CALL SUB04                                                     
                                                                       
      STOP                                                             
      END                                                              
                                                                       
      SUBROUTINE SUB01                                               
      REAL A(10),B(10),C(10)                                           
                                                                       
      DATA B,C/10*1,10*2/                                              
                                                                       
        A=B+C                                                          
        A=A+B                                                          
                                                                       
        DO 100 I=1,10                                                  
          IF (A(I) .NE. 4.0) THEN                                      
            WRITE (6,999)                                              
            GOTO 200                                                   
          END IF                                                       
  100 CONTINUE                                                         
        WRITE (6,998)                                                  
  998 FORMAT(1H ,'****** OK ******')                           
  999 FORMAT(1H ,'?????? NG ??????')                           
  200 CONTINUE                                                         
      RETURN                                                           
      END                                                              
                                                                       
      SUBROUTINE SUB02                                               
      REAL   A(10),B(10),C(10)                                         
                                                                       
      DATA X,A,B,C/0.0,10*1.0,10*2.0,10*3.0/                           
                                                                       
      I=10                                                             
 10   X=X+1.0                                                          
      A(1:I)=B(1:I)                                                    
      IF (X .GT. 1.0) THEN                                             
      C(1:I)=A(1:I)                                                    
      ENDIF                                                            
                                                                       
      DO 100 I=1,10                                                    
        IF (C(I) .NE. 3.0) THEN                                        
          WRITE(6,999)                                                 
          GOTO 200                                                     
        END IF                                                         
100   CONTINUE                                                         
      WRITE(6,998)                                                     
200   CONTINUE                                                         
998   FORMAT(1H ,'****** OK ******')                           
999   FORMAT(1H ,'?????? NG ??????')                           
      RETURN                                                           
      END                                                              
                                                                       
      SUBROUTINE SUB03                                               
      REAL   A(10),B(10),C(10,10),D(10,10)                             
                                                                       
      DATA B,D/10*0.0,100*1.0/                                         
                                                                       
      A=B                                                              
      C=D                                                              
                                                                       
      DO 100 I=1,10                                                    
        IF(A(I) .NE. 0.0) THEN                                         
          WRITE(6,999)                                                 
          GOTO 200                                                     
        END IF                                                         
        DO 100 J=1,10                                                  
          IF(C(I,J) .NE. 1.0) THEN                                     
            WRITE(6,999)                                               
            GOTO 200                                                   
          END IF                                                       
 100  CONTINUE                                                         
      WRITE(6,998)                                                     
 200  CONTINUE                                                         
 998  FORMAT(1H ,'****** OK ******')                           
 999  FORMAT(1H ,'?????? NG ??????')                           
      RETURN                                                           
      END                                                              
                                                                       
      SUBROUTINE SUB04                                               
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
 998    FORMAT(1H ,'****** OK ******')                         
 999    FORMAT(1H ,'?????? NG ??????')                         
        RETURN                                                         
      END                                                              
