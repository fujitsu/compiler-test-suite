       LOGICAL L1,L2,L3,L4,LZ                                           
       DATA L1,L2,L3,L4/3*.FALSE.,.TRUE./                               
       LOGICAL LT(20,20),LF(20,20),LX(20,20)                            
       LOGICAL X1(20,20),X2(20,20),X3(20,20),X4(20,20)                  
       DATA LT/100*.TRUE.,100*.FALSE.,100*.TRUE.,100*.FALSE./           
       DATA LF/100*.FALSE.,100*.TRUE.,100*.FALSE.,100*.TRUE./           
       DATA LX/100*.TRUE.,100*.TRUE.,100*.FALSE.,100*.FALSE./           
       LOGICAL T1(30,30),T2(30,30),T3(30,30),T4(30,30)                  
       DATA T1,T2,T3,T4/2700*.TRUE.,900*.FALSE./                        

       DO 1 I=1,20                                                      
       DO 1 J=1,20                                                      
       DO 1 K=1,5                                                       
         IF(LT(I,J)) THEN                                               
            LT(I,J)=.NOT.LT(I,J)                                        
         ENDIF                                                          
         IF(LF(I,J)) THEN                                               
            LF(I,J)=.NOT.LF(I,J)                                        
         ENDIF                                                          
1      CONTINUE                                                         

       DO 30 K=1,5                                                      
           DO 20 J=1,20,1                                               
           DO 10 I=1,20                                                 
             L1=T1(J,I)                                                 
             L2=T2(J+1,I)                                               
             L3=T3(J+1,I)                                               
             L4=T4(J+1,I)                                               
             IF((.NOT.L3).AND.L4) THEN                                  
               IF((.NOT.L1).AND.L2) THEN                                
                 LF(J,I)=.FALSE.                                        
               ELSE                                                     
                 LF(J,I)=.TRUE.                                         
               ENDIF                                                    
               GO TO 11                                                 
             ENDIF                                                      
             IF((.NOT.L4).AND.L3) THEN                                  
               IF(L1.AND.L2) THEN                                       
                 LF(J,I)=.FALSE.                                        
               ELSE                                                     
                 LF(J,I)=.TRUE.                                         
               ENDIF                                                    
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

             X1(J,I)=L1                                                 
             X2(J,I)=L2                                                 
             X3(J,I)=L3                                                 
             X4(J,I)=L4                                                 
             IF((.NOT.L2).AND.(.NOT.L3).AND.L4) THEN                    
               T3(J+1,I)=.TRUE.                                         
               T4(J+1,I)=.FALSE.                                        
               GO TO 12                                                 
             ENDIF                                                      
             IF((.NOT.L2).AND.L3.AND.(.NOT.L4)) THEN                    
               T4(J+1,I)=.TRUE.                                         
               GO TO 12                                                 
             ENDIF                                                      
             IF((.NOT.L2).AND.L3.AND.L4) THEN                           
               T2(J+1,I)=.TRUE.                                         
               T3(J+1,I)=.FALSE.                                        
               T4(J+1,I)=.FALSE.                                        
               GO TO 12                                                 
             ENDIF                                                      
             IF((.NOT.L1).AND.L2.AND.(.NOT.L3).AND.(.NOT.L4)) THEN      
               T4(J+1,I)=.TRUE.                                         
               GO TO 12                                                 
             ENDIF                                                      
             IF((.NOT.L1).AND.L2.AND.(.NOT.L3).AND.L4) THEN             
               T3(J+1,I)=.TRUE.                                         
               T4(J+1,I)=.FALSE.                                        
               GO TO 12                                                 
             ENDIF                                                      
             IF((.NOT.L1).AND.L2.AND.L3.AND.(.NOT.L4)) THEN             
               T4(J+1,I)=.TRUE.                                         
               GO TO 12                                                 
             ENDIF                                                      
             IF((.NOT.L2).AND.(.NOT.L3).AND.(.NOT.L4)) THEN             
               T4(J+1,I)=.TRUE.                                         
               GO TO 12                                                 
             ENDIF                                                      
             IF((.NOT.L1).AND.L2.AND.L3.AND.L4) THEN                    
               T1(J,I)=.TRUE.                                           
               T2(J+1,I)=.FALSE.                                        
               T3(J+1,I)=.FALSE.                                        
               T4(J+1,I)=.FALSE.                                        
               GO TO 12                                                 
             ENDIF                                                      
             IF(L2.AND.(.NOT.L3).AND.(.NOT.L4)) THEN                    
               T4(J+1,I)=.TRUE.                                         
               GO TO 12                                                 
             ENDIF                                                      
             IF(L2.AND.(.NOT.L3).AND.L4) THEN                           
               T3(J+1,I)=.TRUE.                                         
               T4(J+1,I)=.FALSE.                                        
               GO TO 12                                                 
             ENDIF                                                      
             IF(L2.AND.L3.AND.(.NOT.L4)) THEN                           
               T4(J+1,I)=.TRUE.                                         
               GO TO 12                                                 
             ENDIF                                                      
             IF(L1.AND.L2.AND.L3.AND.L4) THEN                           
               T1(J,I)=.FALSE.                                          
               T2(J+1,I)=.FALSE.                                        
               T3(J+1,I)=.FALSE.                                        
               T4(J+1,I)=.FALSE.                                        
               GO TO 12                                                 
             ENDIF                                                      
             LZ=L1.OR.L2.OR.L3.OR.L4                                    
             IF(LZ) THEN                                                
               GO TO 12                                                 
             ELSE                                                       
               T1(J,I)=.FALSE.                                          
               T2(J+1,I)=.FALSE.                                        
               T3(J+1,I)=.FALSE.                                        
               T4(J+1,I)=.TRUE.                                         
             ENDIF                                                      
 12        CONTINUE                                                     
             LX(J,I)=LT(J,I).AND.LF(J,I)                                
             IF(LX(J,I)) THEN                                           
               LX(J,I)=.NOT.LT(J,I)                                     
             ELSE                                                       
               LX(J,I)=.NOT.LF(J,I)                                     
             ENDIF                                                      
  10       CONTINUE                                                     
  20       CONTINUE                                                     
  30   CONTINUE                                                         
       PRINT *,X1,X2,X3,X4,LX,LF                                        
       END                                                              
