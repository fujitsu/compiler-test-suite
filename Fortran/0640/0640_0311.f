      PROGRAM MAIN                                                    
      REAL*8 DA(10,10),DB(10,10),DC(10,10)                              
      REAL*4 RA(10,10),RB(10,10),RC(10,10)                              
      LOGICAL LA(10),LB(10),LC(10)                                      

      N = 10                                                            
      CALL INIT(N,DA,DB,DC,RA,RB,RC,LA,LB,LC)                           
      CALL TEST1(N,DA,DB,DC,RA,RB,RC,LA,LB,LC)                          
      CALL TEST2(N,DA,DB,DC,RA,RB,RC,LA,LB,LC)                          
      CALL TEST3(N,DA,DB,DC,RA,RB,RC,LA,LB,LC)                          
      CALL TEST4(N,DA,DB,DC,RA,RB,RC,LA,LB,LC)                          
      WRITE(6,*) RA                                                     
      WRITE(6,*) DA                                                     
      STOP                                                              
      END                                                               
      SUBROUTINE INIT(N,DA,DB,DC,RA,RB,RC,LA,LB,LC)                     
      REAL*8 DA(N,N),DB(N,N),DC(N,N)                                    
      REAL*4 RA(N,N),RB(N,N),RC(N,N)                                    
      LOGICAL LA(N),LB(N),LC(N)                                         
      DO 10 I=1,N                                                       
        DO 10 J=1,N                                                     
          DA(J,I) = I + J                                               
          DB(J,I) = I - J                                               
          DC(J,I) = I * J                                               
          RA(J,I) = I + J                                               
          RB(J,I) = I - J                                               
          RC(J,I) = I * J                                               
 10   CONTINUE                                                          
      DO 20 I=1,N,2                                                     
        LA(I) = .TRUE.                                                  
        LB(I) = .FALSE.                                                 
        LC(I) = LA(I)                                                   
        LA(I+1) = .FALSE.                                               
        LB(I+1) = .TRUE.                                                
        LC(I+1) = LA(I)                                                 
 20   CONTINUE                                                          
      RETURN                                                            
      END                                                               
      SUBROUTINE TEST1(N,DA,DB,DC,RA,RB,RC,LA,LB,LC)                    
      REAL*8 DA(N,N),DB(N,N),DC(N,N)                                    
      REAL*4 RA(N,N),RB(N,N),RC(N,N)                                    
      LOGICAL LA(N),LB(N),LC(N)                                         

      DO 10 I=1,N                                                       
        IF(LA(I)) GO TO 10                                              
          IF(LB(I)) GO TO 10                                            
            DA(I,I) = DB(I,I) + DC(I,I)                                 
 10   CONTINUE                                                          

      DO 20 J=1,N                                                       
        IF(LA(J)) THEN                                                  
          IF(LB(5)) THEN                                                
            RA(J,J) = RB(J,J) + RC(J,J)                                 
          ENDIF                                                         
        ENDIF                                                           
 20   CONTINUE                                                          

      DO 30 J=1,N                                                       
        IF(LA(5)) THEN                                                  
          IF(LB(J)) THEN                                                
            RA(J,J) = RB(J,J) * RC(J,J)                                 
          ENDIF                                                         
        ENDIF                                                           
 30   CONTINUE                                                          

      DO 40 J=1,N                                                       
        IF(LA(4)) THEN                                                  
          IF(LB(6)) THEN                                                
            RA(J,J) = RB(J,J) * RC(J,J)                                 
          ENDIF                                                         
        ENDIF                                                           
 40   CONTINUE                                                          

      DO 50 I=1,N                                                       
        IF(LA(I)) GO TO 51                                              
          GO TO 52                                                      
  51    IF(LB(I)) GO TO 53                                              
          GO TO 50                                                      
  52    IF(LC(I)) GO TO 50                                              
  53      DA(I,I) = DB(I,I) + DC(I,I)                                   
  50  CONTINUE                                                          

      DO 60 I=1,N                                                       
        IF(LA(2)) GO TO 61                                              
          GO TO 62                                                      
  61    IF(LB(3)) GO TO 63                                              
          GO TO 60                                                      
  62    IF(LC(3)) GO TO 60                                              
  63      DA(I,I) = DB(I,I) * DC(I,I)                                   
  60  CONTINUE                                                          

      DO 70 I=1,N                                                       
        IF(LA(I)) GO TO 71                                              
          GO TO 72                                                      
  71    IF(LB(3)) GO TO 73                                              
          GO TO 70                                                      
  72    IF(LC(I)) GO TO 70                                              
  73      RA(I,I) = RB(I,I) - RC(I,I)                                   
  70  CONTINUE                                                          
      RETURN                                                            
      END                                                               
      SUBROUTINE TEST2(N,DA,DB,DC,RA,RB,RC,LA,LB,LC)                    
      REAL*8 DA(N,N),DB(N,N),DC(N,N)                                    
      REAL*4 RA(N,N),RB(N,N),RC(N,N)                                    
      LOGICAL LA(N),LB(N),LC(N)                                         

      DO 70 I=1,N                                                       
        IF(LA(I)) GO TO 71                                              
          GO TO 72                                                      
  71    IF(LB(3)) GO TO 73                                              
          GO TO 70                                                      
  72    IF(LC(I)) GO TO 70                                              
  73    DO 60 J=1,N                                                     
          IF(LA(J)) GO TO 61                                            
            GO TO 62                                                    
  61      IF(LB(I)) GO TO 63                                            
            GO TO 60                                                    
  62      IF(LC(J)) GO TO 60                                            
  63        DA(J,I) = DB(J,I) + DC(J,I)                                 
            RA(J,I) = RB(J,I) + RC(J,I)                                 
  60    CONTINUE                                                        
  70  CONTINUE                                                          
      RETURN                                                            
      END                                                               
      SUBROUTINE TEST3(N,DA,DB,DC,RA,RB,RC,LA,LB,LC)                    
      REAL*8 DA(N,N),DB(N,N),DC(N,N)                                    
      REAL*4 RA(N,N),RB(N,N),RC(N,N)                                    
      LOGICAL LA(N),LB(N),LC(N)                                         

      DO 10 I=1,N                                                       
        IF(LA(I)) GO TO 10                                              
          IF(LB(I)) GO TO 10                                            
            DA(I,I) = DB(I,I) + DC(I,I)                                 
 10   CONTINUE                                                          

      DO 20 J=1,N                                                       
        IF(LA(J)) THEN                                                  
          IF(LB(5)) THEN                                                
            RA(J,J) = RB(J,J) + RC(J,J)                                 
          ENDIF                                                         
        ENDIF                                                           
 20   CONTINUE                                                          

      DO 30 J=1,N                                                       
        IF(LA(5)) THEN                                                  
          IF(LB(J)) THEN                                                
            RA(J,J) = RB(J,J) * RC(J,J)                                 
          ENDIF                                                         
        ENDIF                                                           
 30   CONTINUE                                                          

      DO 40 J=1,N                                                       
        IF(LA(4)) THEN                                                  
          IF(LB(6)) THEN                                                
            RA(J,J) = RB(J,J) * RC(J,J)                                 
          ENDIF                                                         
        ENDIF                                                           
 40   CONTINUE                                                          

      DO 50 I=1,N                                                       
        IF(LA(I)) GO TO 51                                              
          GO TO 52                                                      
  51    IF(LB(I)) GO TO 53                                              
          GO TO 50                                                      
  52    IF(LC(I)) GO TO 50                                              
  53      DA(I,I) = DB(I,I) + DC(I,I)                                   
  50  CONTINUE                                                          

      DO 60 I=1,N                                                       
        IF(LA(2)) GO TO 61                                              
          GO TO 62                                                      
  61    IF(LB(3)) GO TO 63                                              
          GO TO 60                                                      
  62    IF(LC(3)) GO TO 60                                              
  63      DA(I,I) = DB(I,I) + DC(I,I)                                   
  60  CONTINUE                                                          

      DO 70 I=1,N                                                       
        IF(LA(I)) GO TO 71                                              
          GO TO 72                                                      
  71    IF(LB(3)) GO TO 73                                              
          GO TO 70                                                      
  72    IF(LC(I)) GO TO 70                                              
  73      RA(I,I) = RB(I,I) - RC(I,I)                                   
  70  CONTINUE                                                          
      RETURN                                                            
      END                                                               
      SUBROUTINE TEST4(N,DA,DB,DC,RA,RB,RC,LA,LB,LC)                    
      REAL*8 DA(N,N),DB(N,N),DC(N,N)                                    
      REAL*4 RA(N,N),RB(N,N),RC(N,N)                                    
      LOGICAL LA(N),LB(N),LC(N)                                         

      DO 70 I=1,N                                                       
        IF(LA(I)) GO TO 71                                              
          GO TO 72                                                      
  71    IF(LB(3)) GO TO 73                                              
          GO TO 70                                                      
  72    IF(LC(I)) GO TO 70                                              
  73    DO 60 J=1,N                                                     
          IF(LA(J)) GO TO 61                                            
            GO TO 62                                                    
  61      IF(LB(I)) GO TO 63                                            
            GO TO 60                                                    
  62      IF(LC(J)) GO TO 60                                            
  63        DA(J,I) = DB(J,I) + DC(J,I)                                 
            RA(J,I) = RB(J,I) * RC(J,I)                                 
  60    CONTINUE                                                        
  70  CONTINUE                                                          
      RETURN                                                            
      END                                                               
