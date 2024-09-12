       REAL A(20,20,5),B(20,20,5),C(20,20,5)                            
       REAL R(20,20,5)                                                  
       DATA A,B,C/2000*5.0,2000*2.0,2000*3.0/                           
       DATA R/2000*2.2/                                                 
       DATA N1,N2,N3/1,20,1/                                            
       DATA  D1,D2,D5,DA/1.0D0,2.0D0,5.0D0,8.0D0/                       
       DATA M1,M2,M3/1,20,1/                                            
       LOGICAL LT(20,20),LF(20,20),LX(20,20)                            
       DATA LT/100*.TRUE.,100*.FALSE.,100*.TRUE.,100*.FALSE./           
       DATA LF/100*.FALSE.,100*.TRUE.,100*.FALSE.,100*.TRUE./           
       DATA LX/100*.TRUE.,100*.TRUE.,100*.FALSE.,100*.FALSE./           

       DO 1 I=1,20                                                      
       DO 1 J=1,20                                                      
       DO 1 K=1,5                                                       
         S1=D1                                                          
         S2=D2                                                          
         A(I,J,K)=S1                                                    
         B(I,J,K)=S2                                                    
         C(I,J,K)=A(I,J,K)+B(I,J,K)                                     
         IF(A(I,J,K).GT.D5) THEN                                        
            LT(I,J)=.NOT.LT(I,J)                                        
            S1 = D5                                                     
         ENDIF                                                          
         IF(B(I,J,K).GT.DA) THEN                                        
            LF(I,J)=.NOT.LF(I,J)                                        
            S2 = DA                                                     
         ENDIF                                                          
1      CONTINUE                                                         

       DO 30 K=1,5                                                      
           DO 20 J=1,20,1                                               
           DO 10 I=1,20                                                 
             IF(.NOT.LF(K,K)) THEN                                      
               IF(.NOT.LF(J,I)) THEN                                    
                 A(J,I,K)=A(J,I,K)-C(J,I,K)                             
                 LF(J,I)=.FALSE.                                        
               ENDIF                                                    
             ENDIF                                                      
             IF(LT(K,K)) THEN                                           
               IF(.NOT.LT(J,I)) THEN                                    
                 B(J,I,K)=B(J,I,K)-A(J,I,K)                             
                 LT(J,I)=.TRUE.                                         
               ENDIF                                                    
               R(J,I,K)=A(J,I,K)-C(J,I,K)*B(J,I,K)                      
             ENDIF                                                      
             LX(J,I)=LT(J,I).AND.LF(J,I)                                
             IF(LX(J,I)) THEN                                           
               R(J,I,K)=R(J,I,K)-1.0D0                                  
               LX(J,I)=.NOT.LT(J,I)                                     
             ELSE                                                       
               R(J,I,K)=R(J,I,K)+1.0D0                                  
               LX(J,I)=.NOT.LF(J,I)                                     
             ENDIF                                                      
  10       CONTINUE                                                     
  20       CONTINUE                                                     
  30   CONTINUE                                                         
       PRINT *,LX,R                                                     
       END                                                              