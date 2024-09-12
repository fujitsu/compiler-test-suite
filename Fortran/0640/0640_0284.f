       REAL A(20,20,5),B(20,20,5),C(20,20,5)                            
       REAL R(20,20,5)                                                  
       DATA A,B,C/2000*8.0,2000*1.0,2000*2.0/                           
       DATA R/2000*2.2/                                                 
       DATA  D1,D2,D5,DA/1.0D0,2.0D0,5.0D0,10.0D0/                      
       LOGICAL L1,L2,L3,L4,LZ                                           
       LOGICAL LT(20,20),LF(20,20),LX(20,20)                            
       DATA LT/100*.TRUE.,100*.FALSE.,100*.TRUE.,100*.FALSE./           
       DATA LF/100*.FALSE.,100*.TRUE.,100*.FALSE.,100*.TRUE./           
       DATA LX/100*.TRUE.,100*.TRUE.,100*.FALSE.,100*.FALSE./           
       LOGICAL LL1(30,30),LL2(30,30),LL3(30,30),LL4(30,30)              
       DATA LL1,LL2,LL3,LL4/2700*.TRUE.,900*.FALSE./                    

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
             L1=LL1(J,I)                                                
             L2=LL2(J,I)                                                
             L3=LL3(J,I)                                                
             L4=LL4(J,I)                                                
             IF((.NOT.L3).AND.L4) THEN                                  
               IF((.NOT.L1).AND.L2) THEN                                
                 A(J,I,K)=A(J,I,K)-C(J,I,K)                             
                 LF(J,I)=.FALSE.                                        
               ELSE                                                     
                 LF(J,I)=.TRUE.                                         
               ENDIF                                                    
               GO TO 11                                                 
             ENDIF                                                      
             IF((.NOT.L4).AND.L3) THEN                                  
               IF(L1.AND.L2) THEN                                       
                 B(J,I,K)=B(J,I,K)-A(J,I,K)                             
                 LF(J,I)=.FALSE.                                        
               ELSE                                                     
                 LF(J,I)=.TRUE.                                         
               ENDIF                                                    
               R(J,I,K)=A(J,I,K)-C(J,I,K)*B(J,I,K)                      
             ENDIF                                                      
             IF((.NOT.L4).AND.(.NOT.L3)) THEN                           
               IF(L1.AND.L2) THEN                                       
                 LF(J,I)=.FALSE.                                        
               ELSE                                                     
                 LF(J,I)=.TRUE.                                         
               ENDIF                                                    
               GO TO 11                                                 
             ENDIF                                                      
 11          CONTINUE                                                   
             IF((.NOT.L2).AND.(.NOT.L3).AND.L4) THEN                    
               LL3(J+1,I)=.TRUE.                                        
               LL4(J+1,I)=.FALSE.                                       
               GO TO 12                                                 
             ENDIF                                                      
             IF((.NOT.L2).AND.L3.AND.(.NOT.L4)) THEN                    
               LL4(J+1,I)=.TRUE.                                        
               GO TO 12                                                 
             ENDIF                                                      
             IF((.NOT.L2).AND.L3.AND.L4) THEN                           
               LL2(J+1,I)=.TRUE.                                        
               LL3(J+1,I)=.FALSE.                                       
               LL4(J+1,I)=.FALSE.                                       
               GO TO 12                                                 
             ENDIF                                                      
             IF((.NOT.L1).AND.L2.AND.(.NOT.L3).AND.(.NOT.L4)) THEN      
               LL4(J+1,I)=.TRUE.                                        
               GO TO 12                                                 
             ENDIF                                                      
             IF((.NOT.L1).AND.L2.AND.(.NOT.L3).AND.L4) THEN             
               LL3(J+1,I)=.TRUE.                                        
               LL4(J+1,I)=.FALSE.                                       
               GO TO 12                                                 
             ENDIF                                                      
             IF((.NOT.L1).AND.L2.AND.L3.AND.(.NOT.L4)) THEN             
               LL4(J+1,I)=.TRUE.                                        
               GO TO 12                                                 
             ENDIF                                                      
             IF((.NOT.L2).AND.(.NOT.L3).AND.(.NOT.L4)) THEN             
               LL4(J+1,I)=.TRUE.                                        
               GO TO 12                                                 
             ENDIF                                                      
             IF((.NOT.L1).AND.L2.AND.L3.AND.L4) THEN                    
               LL1(J+1,I)=.TRUE.                                        
               LL2(J+1,I)=.FALSE.                                       
               LL3(J+1,I)=.FALSE.                                       
               LL4(J+1,I)=.FALSE.                                       
               GO TO 12                                                 
             ENDIF                                                      
             IF(L2.AND.(.NOT.L3).AND.(.NOT.L4)) THEN                    
               LL4(J+1,I)=.TRUE.                                        
               GO TO 12                                                 
             ENDIF                                                      
             IF(L2.AND.(.NOT.L3).AND.L4) THEN                           
               LL3(J+1,I)=.TRUE.                                        
               LL4(J+1,I)=.FALSE.                                       
               GO TO 12                                                 
             ENDIF                                                      
             IF(L2.AND.L3.AND.(.NOT.L4)) THEN                           
               LL4(J+1,I)=.TRUE.                                        
               GO TO 12                                                 
             ENDIF                                                      
             IF(L1.AND.L2.AND.L3.AND.L4) THEN                           
               LL1(J+1,I)=.FALSE.                                       
               LL2(J+1,I)=.FALSE.                                       
               LL3(J+1,I)=.FALSE.                                       
               LL4(J+1,I)=.FALSE.                                       
               GO TO 12                                                 
             ENDIF                                                      
             LZ=L1.OR.L2.OR.L3.OR.L4                                    
             IF(LZ) THEN                                                
               GO TO 12                                                 
             ELSE                                                       
               LL1(J+1,I)=.FALSE.                                       
               LL2(J+1,I)=.FALSE.                                       
               LL3(J+1,I)=.FALSE.                                       
               LL4(J+1,I)=.TRUE.                                        
             ENDIF                                                      
 12        CONTINUE                                                     
             LX(J,I)=LT(J,I).AND.LF(J,I)                                
             IF(LX(J,I)) THEN                                           
               LX(J,I)=.NOT.LT(J,I)                                     
               R(J,I,K)=MAX(R(J,I,K),B(J,I,K),A(J,I,K))                 
             ELSE                                                       
               LX(J,I)=.NOT.LF(J,I)                                     
               R(J,I,K)=MIN(R(J,I,K),B(J,I,K),A(J,I,K))                 
             ENDIF                                                      
  10       CONTINUE                                                     
  20       CONTINUE                                                     
  30   CONTINUE                                                         
       PRINT *,LF,LX,R                                                  
       END                                                              
