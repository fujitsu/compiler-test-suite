      PROGRAM MAIN                                                   
      INTEGER X(10,10),ANS(10,10),ERROR
      DATA ANS/1,4,1,4,1,4,1,4,1,4,3,2,3,2,3,2,3,2,3,2,                 
     &         1,4,1,4,1,4,1,4,1,4,3,2,3,2,3,2,3,2,3,2,                 
     &         1,4,1,4,1,4,1,4,1,4,3,2,3,2,3,2,3,2,3,2,                 
     &         1,4,1,4,1,4,1,4,1,4,3,2,3,2,3,2,3,2,3,2,                 
     &         1,4,1,4,1,4,1,4,1,4,3,2,3,2,3,2,3,2,3,2/                 
      DATA ERROR/0/
      CALL SUB(X,2,10,ERROR)
      DO 10 I=1,10                                                      
        DO 20 J=1,10                                                    
          IF (X(I,J).NE.ANS(I,J)) THEN                                  
            WRITE (6,*) 'NG'
            ERROR=1
            STOP                                                        
          ENDIF                                                         
  20    CONTINUE                                                        
  10  CONTINUE                                                          
      IF(ERROR .EQ.0) THEN
         WRITE(6,*) 'OK'
      ENDIF
      STOP                                                              
      END                                                               
                                                                        
      SUBROUTINE SUB(A,I,J,ERROR)
      INTEGER A(10,10),ERROR
      A(1:10,I-1:J)=999                                                 
      DO 10 IX1=3,8                                                     
        DO 11 IX2=1,10                                                  
          A(1,IX2)=1                                                    
  11    CONTINUE                                                        
        DO 12 IX3=1,10                                                  
          A(2,IX3)=2                                                    
  12    CONTINUE                                                        
        A(IX1,1:9:2)=100                                                
        DO 13 IX4=1,10                                                  
          A(9,IX4)=9                                                    
  13    CONTINUE                                                        
        A(IX1,10:2:-2)=100                                              
        DO 14 IX4=1,10                                                  
          A(10,IX4)=10                                                  
  14    CONTINUE                                                        
  10  CONTINUE                                                          
                                                                        
      DO 100 IX5=1,10                                                   
        DO 110 IX6=1,10                                                 
          IF((IX5.EQ.1).OR.(IX5.EQ.2).OR.(IX5.EQ.9).OR.(IX5.EQ.10))THEN 
            IF(A(IX5,IX6).NE.IX5) THEN                                  
              WRITE (6,*) 'NG'
              ERROR=1
              GOTO 200                                                  
            ENDIF                                                       
          ELSE                                                          
            IF(A(IX5,IX6).NE.100) THEN                                  
              WRITE (6,*) 'NG'
              ERROR=1
              GOTO 200                                                  
            ENDIF                                                       
          ENDIF                                                         
 110    CONTINUE                                                        
 100  CONTINUE                                                          
                                                                        
 200  IX7=1                                                             
      A(I-1:J,J:I-1:-1)=999                                             
  20  IF (MOD(IX7,2).EQ.0) THEN                                         
        A(IX7,2:10:2)=2                                                 
        GOTO 21                                                         
      ENDIF                                                             
      A(IX7,2:10:2)=3                                                   
  21  IF (MOD(IX7,2).EQ.1) THEN                                         
        A(IX7,J-1:I-1:-I)=1                                             
        GOTO 22                                                         
      ENDIF                                                             
      A(IX7,J-1:I-1:-I)=4                                               
  22  IX7=IX7+1                                                         
      IF(IX7.LE.10) GOTO 20                                             
                                                                        
      RETURN                                                            
      END                                                               
