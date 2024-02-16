      PROGRAM MAIN                                                   
      REAL A(10),B(10) ,AA(10,10)/100*2.5/,BB(20,20)/400*50/           
      REAL A_RIGHT_RESULT(10),AA_RIGHT_RESULT(10,10)                   
      INTEGER N(2)/1,5/,I,J                                            
      LOGICAL A_NO_GOOD/.FALSE./,AA_NO_GOOD/.FALSE./                   
      DATA A/10*1/,B/-4.0,-3.0,-2.0,-1.0,0.0,1.0,2.0,3.0,4.0,5.0/      
      DATA A_RIGHT_RESULT /1,-3.0,-2.0,-1.0,0.0,1.0,1.0,1.0,1.0,1.0/   
      DATA AA_RIGHT_RESULT/100*52.5/                                   
C                                                                      
C     INITIALIZATION                                                   
C                                                                      
      A(2:6)=A(N(1):N(2))+B(1:5)                                       
      AA=AA+BB(1:20:2,1:20:2)                                          
C                                                                      
      DO I=1,10                                                        
        IF (A(I).NE.A_RIGHT_RESULT(I)) A_NO_GOOD = .TRUE.
      ENDDO                                                            
      IF (A_NO_GOOD) THEN                                              
        WRITE (6,*) '?????? NG ??????'                         
        WRITE (6,*) '< ACTUAL RESULT >   ',A                           
        WRITE (6,*) '< RIGHT  RESULT >   ',A_RIGHT_RESULT              
        WRITE (6,*) '?????? NG ??????'                         
      ENDIF                                                            
      DO J=1,10                                                        
        DO I=1,10                                                      
          IF (AA(I,J).NE.AA_RIGHT_RESULT(I,J)) AA_NO_GOOD = .TRUE.
        ENDDO                                                          
      ENDDO                                                            
      IF (AA_NO_GOOD) THEN                                             
        WRITE (6,*) '?????? NG ??????'                         
        WRITE (6,*) '< ACTUAL RESULT >   ',AA                          
        WRITE (6,*) '< RIGHT  RESULT >   ',AA_RIGHT_RESULT             
        WRITE (6,*) '?????? NG ??????'                         
      ENDIF                                                            
      IF (A_NO_GOOD .AND. AA_NO_GOOD) THEN                             
      ELSE                                                             
        WRITE (6,*) '!!!!!! OK !!!!!!'                         
      ENDIF                                                            
C                                                                      
      STOP                                                             
      END                                                              
