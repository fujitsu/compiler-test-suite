       REAL A2(5,5),B2(5,5),R2(5,5)                                     
       REAL A4(4,4,4,4),B4(4,4,4,4),R4(4,4,4,4)                         
       REAL R6(4,4,4,4,5,5)                                             
       LOGICAL T2(5,5)                                                  
       LOGICAL T4(4,4,4,4)                                              
       LOGICAL T6(4,4,4,4,5,5)                                          

       DATA A2,B2/25*1.0D0,25*2.0D0/                                    
       DATA A4,B4/256*0.030D-2,256*0.006D-2/                            
       DATA R6/6400*0.0040D-2/                                          
       DATA T2/5*.TRUE.,10*.FALSE.,5*.TRUE.,5*.FALSE./                  
       DATA T4/64*.TRUE.,64*.FALSE.,64*.TRUE.,64*.FALSE./               
       DATA T6/700*.TRUE.,800*.FALSE.,800*.TRUE.,700*.FALSE.            
     1        ,700*.TRUE.,800*.FALSE.,800*.TRUE.,700*.FALSE.            
     E        ,100*.TRUE.,100*.FALSE.,100*.TRUE.,100*.FALSE./           

       R2 = 0

       DO 60 M=1,3                                                      
       DO 50 N=1,5                                                      
         A2(N,M)=N*0.01                                                 
         IF(T2(N,M)) THEN                                               
           A2(N,M)=B2(N,M)-1.0D0                                        
         T2(N,M)=.NOT.T2(N,M)                                           
         ELSE                                                           
           B2(N,M)=A2(N,M)+1.0D0                                        
         ENDIF                                                          
         R2(N,M)=A2(N,M)-B2(N,M)                                        
         DO 40 L=1,4                                                    
         DO 30 J=1,4                                                    
         DO 20 I=1,4                                                    
         DO 10 K=1,4                                                    
            T4(I,J,K,L)=.NOT.T6(I,J,K,L,N,M)                            
            IF(T4(I,J,K,L)) THEN                                        
               A4(I,J,K,L)=-B4(I,J,K,L)                                 
             ELSE                                                       
               B4(I,J,K,L)=-A4(I,J,K,L)                                 
            ENDIF                                                       
            R4(I,J,K,L)=A4(I,J,K,L)-B4(I,J,K,L)                         
            IF(R6(I,J,K,L,N,M).GT.B4(I,J,K,L)) THEN                     
              R4(I,J,K,L)=-R6(I,J,K,L,N,M)                              
              GO TO 11                                                  
            ELSE                                                        
              IF(.NOT.T6(I,J,K,L,N,M)) THEN                             
                T4(I,J,K,L)=.NOT.T4(I,J,K,L)                            
                SN=0.001D0                                              
                GO TO 12                                                
              ELSE                                                      
                T6(I,J,K,L,N,M)=T6(I,J,K,L,N,M).AND.T4(I,J,K,L)         
              ENDIF                                                     
            ENDIF                                                       
 11         SN=SIN(R4(I,J,K,L))                                         
 12         CS=1.0D0-SN                                                 
            IF(SN.GT.CS) THEN                                           
              T6(I,J,K,L,N,M)=.NOT.T6(I,J,K,L,N,M)                      
            ELSE                                                        
              T6(I,J,K,L,N,M)=.NOT.T4(I,J,K,L)                          
            ENDIF                                                       
 10      CONTINUE                                                       
 20      CONTINUE                                                       
 30      CONTINUE                                                       
 40      CONTINUE                                                       
 50      CONTINUE                                                       
 60      CONTINUE                                                       
         PRINT *,T2,R2,T4,T6                                            
         END                                                            
