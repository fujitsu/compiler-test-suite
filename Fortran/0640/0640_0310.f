      PROGRAM MAIN                                                    
      REAL*8  DA(100),DB(100),DC(100),DD(100)                           
      REAL*4  RA(100),RB(100),RC(100),RD(100)                           
      LOGICAL LA(100),LB(100),LC(100),LD(100)                           
      INTEGER IN(5)/10,20,30,40,50/                                     
      N = 100                                                           
      CALL       INIT(N,DA,DB,DC,DD,RA,RB,RC,RD,LA,LB,LC,LD)            
      CALL TEST1(N,DA,DB,DC,DD,RA,RB,RC,RD,LA,LB,LC,LD)                 
      CALL TEST2(N,DA,DB,DC,DD,RA,RB,RC,RD,LA,LB,LC,LD,IN)              
      CALL TEST3(N,DA,DB,DC,DD,RA,RB,RC,RD,LA,LB,LC,LD)                 
      CALL TEST4(N,DA,DB,DC,DD,RA,RB,RC,RD,LA,LB,LC,LD,IN)              
      STOP                                                              
      END                                                               
      SUBROUTINE INIT(N,DA,DB,DC,DD,RA,RB,RC,RD,LA,LB,LC,LD)            
      REAL*8 DA(N),DB(N),DC(N),DD(N)                                    
      REAL*4 RA(N),RB(N),RC(N),RD(N)                                    
      LOGICAL LA(N),LB(N),LC(N),LD(N)                                   
      DO 10 I=1,N                                                       
        DA(I) = 0.                                                      
        DB(I) = 1.                                                      
        DC(I) = 2.                                                      
        DD(I) = 3.                                                      
        RA(I) = 0.                                                      
        RB(I) = 1.                                                      
        RC(I) = 2.                                                      
        RD(I) = 3.                                                      
 10   CONTINUE                                                          
      DO 20 J=1,N,2                                                     
        LA(J) = .TRUE.                                                  
        LA(J+1) = .FALSE.                                               
        LB(J) = .TRUE.                                                  
        LB(J+1) = .FALSE.                                               
        LC(J) = .TRUE.                                                  
        LC(J+1) = .FALSE.                                               
        LD(J) = .TRUE.                                                  
        LD(J+1) = .FALSE.                                               
 20   CONTINUE                                                          
      RETURN                                                            
      END                                                               
      SUBROUTINE TEST1(N,DA,DB,DC,DD,RA,RB,RC,RD,LA,LB,LC,LD)           
      REAL*8 DA(N),DB(N),DC(N),DD(N)                                    
      REAL*4 RA(N),RB(N),RC(N),RD(N)                                    
      LOGICAL LA(N),LB(N),LC(N),LD(N)                                   
      DO 10 I=1,N                                                       
        IF(LA(I)) THEN                                                  
          DO 20 J=1,N                                                   
            DA(J) = DB(J) + DC(J)                                       
 20       CONTINUE                                                      
        ENDIF                                                           
 10   CONTINUE                                                          
      WRITE(6,*) DA                                                     

      DO 30 I=1,N                                                       
        IF(LA(I)) THEN                                                  
          DO 40 J=1,N                                                   
            DA(J) = DB(J) + DC(J)                                       
 40       CONTINUE                                                      
        ENDIF                                                           
 30   CONTINUE                                                          
      WRITE(6,*) DA                                                     

      DO 50 I=1,N                                                       
        IF(LA(I)) THEN                                                  
          RA(I) = SQRT(RB(I)) + SQRT(RC(I))                             
          RA(I) = RA(I)**3                                              
          DO 60 J=2,N                                                   
            DA(J) = DA(J-1) + DC(J)                                     
 60       CONTINUE                                                      
        ENDIF                                                           
 50   CONTINUE                                                          
      WRITE(6,*) RA                                                     
      WRITE(6,*) DA                                                     

      DO 70 I=1,N                                                       
        IF(LA(I)) THEN                                                  
          DO 80 J=2,N                                                   
            DA(J) = DA(J-1) + DC(J)                                     
 80       CONTINUE                                                      
        ENDIF                                                           
 70   CONTINUE                                                          
      WRITE(6,*) DA                                                     
      RETURN                                                            
      END                                                               
      SUBROUTINE TEST2(N,DA,DB,DC,DD,RA,RB,RC,RD,LA,LB,LC,LD,IN)        
      REAL*8 DA(N),DB(N),DC(N),DD(N)                                    
      REAL*4 RA(N),RB(N),RC(N),RD(N)                                    
      LOGICAL LA(N),LB(N),LC(N),LD(N)                                   
      INTEGER IN(5)                                                     

      DO 10 I=1,IN(1)                                                   
        IF(LA(I)) THEN                                                  
          DO 20 J=1,IN(2)                                               
            DA(J) = DB(J) + DC(J)                                       
 20       CONTINUE                                                      
        ENDIF                                                           
 10   CONTINUE                                                          
      WRITE(6,*) DA                                                     

      DO 30 I=1,IN(3)                                                   
        IF(LB(I)) THEN                                                  
          DO 40 J=1,IN(4)                                               
            DA(J) = DB(J) + DC(J)                                       
 40       CONTINUE                                                      
        ENDIF                                                           
 30   CONTINUE                                                          
      WRITE(6,*) DA                                                     

      DO 50 I=1,IN(5)                                                   
        IF(LA(I)) THEN                                                  
          RA(I) = SQRT(RB(I)) + SQRT(RC(I))                             
          RA(I) = RA(I)**3                                              
          DO 60 J=2,IN(1)                                               
            DA(J) = DA(J-1) + DC(J)                                     
 60       CONTINUE                                                      
        ENDIF                                                           
 50   CONTINUE                                                          
      WRITE(6,*) RA                                                     
      WRITE(6,*) DA                                                     

      DO 70 I=1,IN(3)                                                   
        IF(LC(I)) THEN                                                  
          DO 80 J=2,IN(4)                                               
            DA(J) = DA(J-1) + DC(J)                                     
 80       CONTINUE                                                      
        ENDIF                                                           
 70   CONTINUE                                                          
      WRITE(6,*) DA                                                     
      RETURN                                                            
      END                                                               
      SUBROUTINE TEST3(N,DA,DB,DC,DD,RA,RB,RC,RD,LA,LB,LC,LD)           
      REAL*8 DA(N),DB(N),DC(N),DD(N)                                    
      REAL*4 RA(N),RB(N),RC(N),RD(N)                                    
      LOGICAL LA(N),LB(N),LC(N),LD(N)                                   
      DO 10 I=1,N                                                       
        IF(LA(I)) THEN                                                  
          DO 20 J=1,N                                                   
            IF(LB(J)) THEN                                              
              DO 30 K=1,N                                               
                IF(LC(K)) THEN                                          
                  DO 40 L=1,N                                           
                    DA(L) = DB(L) + DC(L)                               
 40               CONTINUE                                              
                ENDIF                                                   
 30           CONTINUE                                                  
            ENDIF                                                       
 20       CONTINUE                                                      
        ENDIF                                                           
 10   CONTINUE                                                          
      WRITE(6,*) DA                                                     
      RETURN                                                            
      END                                                               
      SUBROUTINE TEST4(N,DA,DB,DC,DD,RA,RB,RC,RD,LA,LB,LC,LD,IN)        
      REAL*8 DA(N),DB(N),DC(N),DD(N)                                    
      REAL*4 RA(N),RB(N),RC(N),RD(N)                                    
      LOGICAL LA(N),LB(N),LC(N),LD(N)                                   
      INTEGER IN(5)                                                     

      DO 10 I=1,IN(1)                                                   
        IF(LA(I)) THEN                                                  
          DO 20 J=1,IN(2)                                               
            IF(LB(J)) THEN                                              
              DO 30 K=1,IN(3)                                           
                IF(LC(K)) THEN                                          
                  DO 40 L=1,IN(4)                                       
                    DA(L) = DB(L) + DC(L)                               
 40               CONTINUE                                              
                ENDIF                                                   
 30           CONTINUE                                                  
            ENDIF                                                       
 20       CONTINUE                                                      
        ENDIF                                                           
 10   CONTINUE                                                          
      WRITE(6,*) DA                                                     
      RETURN                                                            
      END                                                               
