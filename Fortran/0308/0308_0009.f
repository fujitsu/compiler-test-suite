      PROGRAM MAIN                                                   
      INTEGER A(20)                                                     
      A=1                                                               

      A(1:10) = A(1:10)*2                                               

      A(2:11) = A(1:10)*2                                               

      A(1:10) = A(2:11)*2                                               

      DO 10 I=1,20                                                      
        IF (I .LE. 10) THEN                                             
          IF (A(I) .NE. 8) GOTO 20                                      
        ELSE                                                            
          IF (I .EQ. 11) THEN                                           
            IF (A(I) .NE. 4) GOTO 20                                    
          ELSE                                                          
            IF (A(I) .NE. 1) GOTO 20                                    
          END IF                                                        
        END IF                                                          
   10   CONTINUE                                                        

      WRITE(6,*) 'OK'                                   
      GOTO 30                                                           

   20 WRITE(6,*) 'NG'                                   
      WRITE(6,*) 'A = ',A                                               

   30 END                                                               
