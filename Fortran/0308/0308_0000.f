      PROGRAM MAIN
      INTEGER ERROR
      REAL,DIMENSION(3,3,3)::R1,R2,RA,RM,RS                             
      LOGICAL,DIMENSION(3,3,3)::L1,L2,L3                                
      DATA ERROR/0/
      DATA R1/1,2,3,1,2,3,1,2,3,1,2,3,1,2,3,1,2,3,1,2,3,1,2,3,1,2,3/    
      R2=2.0                                                            
      RA=R1+R2                                                          
      RM=R1*R2                                                          
      RS=R1-R2                                                          

      L1=(RA.GT.RM)                                                     
      L2=(RA.EQ.RM)                                                     
      L3=(RS.LT.0.0)                                                    
                                                                       
      DO 11 K=1,3                                                       
      DO 11 J=1,3                                                       
        IF ((.NOT.L1(1,J,K)) .OR. L1(2,J,K) .OR. L1(3,J,K)) THEN        
          WRITE (6,*) 'NG'                        
          ERROR=1
          GO TO 20                                                      
        ENDIF                                                           
  11  CONTINUE                                                          
                                                                       
  20  DO 21 K=1,3                                                       
      DO 21 J=1,3                                                       
        IF (L2(1,J,K) .OR. (.NOT.L2(2,J,K)) .OR. L2(3,J,K)) THEN        
          WRITE (6,*) 'NG'                        
          ERROR=1
          GO TO 30                                                      
        ENDIF                                                           
  21  CONTINUE                                                          
                                                                       
  30  DO 31 K=1,3                                                       
      DO 31 J=1,3                                                       
        IF ((.NOT.L3(1,J,K)) .OR. L3(2,J,K) .OR. L3(3,J,K)) THEN        
          WRITE (6,*) 'NG'                        
          ERROR=1
          GO TO 40                                                      
        ENDIF                                                           
  31  CONTINUE                                                          
   40 IF(ERROR .EQ. 0) THEN
         WRITE(6,*) 'OK'
      ENDIF
      STOP                                                              
      END                                                               
