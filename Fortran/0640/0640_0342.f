      PROGRAM MAIN                                                    
      IMPLICIT REAL*8(D),REAL*8(Q),COMPLEX(C),LOGICAL(L)                
      DATA    DS01,DS02,DS03,DS04,DS05/1,2,3,4,5/                       
      DATA    IS01,IS02,IS03          /1,2,3    /                       
      DO 10 J=1,10                                                      
       DS01=DS01+DS03+DS04                                              
       DO 10 I=1,10                                                     
        IF(J.GT.5) THEN                                                 
         DS02=DS02+DS03+DS05                                            
        END IF                                                          
  10  CONTINUE                                                          
      WRITE(6,*) DS01,DS02,I,J                                          
      DO 20 J=1,10                                                      
       DO 20 I=1,10                                                     
        IF (J.LE.2)  GOTO 21                                            
        IF (J.GE.9)  GOTO 22                                            
        IF (J.EQ.5)  GOTO 21                                            
        IF (I.LE.5)  GOTO 23                                            
        GOTO 20                                                         
  21    CONTINUE                                                        
        IS01 = IS01 + 1                                                 
        GOTO 20                                                         
  22    CONTINUE                                                        

        IF(J.EQ.10) GOTO 23                                             
        IS02 = IS02 + 1                                                 
        GOTO 20                                                         
  23    CONTINUE                                                        
        IS03 = IS03 + 1                                                 
  20  CONTINUE                                                          
      WRITE(6,*) IS01                                   
      WRITE(6,*) IS02                                   
      WRITE(6,*) IS03                                   
      STOP                                                              
      END                                                               


