       REAL A2(5,5),B2(5,5),R2(5,5)                                     
       INTEGER IC4(4,4,4,4),IXC6(4,4,4,4,5,5)                           
       INTEGER IS4(4,4,4,4),IXS6(4,4,4,4,5,5)                           
       LOGICAL T2(5,5)                                                  
       REAL A4(4,4,4,4),B4(4,4,4,4),R4(4,4,4,4)                         
       LOGICAL T4(4,4,4,4)                                              
       REAL A6(4,4,4,4,5,5),B6(4,4,4,4,5,5),R6(4,4,4,4,5,5)             
       LOGICAL T6(4,4,4,4,5,5)                                          

       DATA A2,B2/25*1.0D0,25*2.0D0/                                    
       DATA T2/5*.TRUE.,10*.FALSE.,5*.TRUE.,5*.FALSE./                  
       DATA A4,B4/256*0.030D-2,256*0.006D-2/                            
       DATA T4/64*.TRUE.,64*.FALSE.,64*.TRUE.,64*.FALSE./           
       DATA A6,B6/6400*0.0040D-2,6400*0.0008D-2/                        
       DATA T6/700*.TRUE.,800*.FALSE.,800*.TRUE.,700*.FALSE.            
     1        ,700*.TRUE.,800*.FALSE.,800*.TRUE.,700*.FALSE.            
     E        ,100*.TRUE.,100*.FALSE.,100*.TRUE.,100*.FALSE./           
       DATA R6/6400*0.001D0/                                            

       R2 = 0

       DO 60 M=1,3                                                      
       DO 50 N=1,5                                                      
         IF(T2(N,M)) THEN                                               
           A2(N,M)=B2(N,M)-1.0D0                                        
         ELSE                                                           
           B2(N,M)=A2(N,M)+1.0D0                                        
         ENDIF                                                          
         T2(N,M)=.NOT.T2(N,M)                                           
         R2(N,M)=A2(N,M)-B2(N,M)                                        
         DO 40 I=1,4                                                    
         DO 30 J=1,4                                                    
         DO 20 K=1,4                                                    
         DO 10 L=1,4                                                    
            T4(I,J,K,L)=.NOT.T6(I,J,K,L,N,M)                            
            IF(T4(I,J,K,L)) THEN                                        
               A4(I,J,K,L)=B4(I,J,K,L)/(0.001D-2+A6(I,J,K,L,N,M))       
             ELSE                                                       
               B4(I,J,K,L)=B6(I,J,K,L,N,M)/A4(I,J,K,L)+0.001D-2         
            ENDIF                                                       
            R4(I,J,K,L)=A4(I,J,K,L)-B4(I,J,K,L)                         
            IF(R6(I,J,K,L,N,M).GT.B4(I,J,K,L)) THEN                     
              IF(T4(I,J,K,L).AND.T6(I,J,K,L,N,M)) THEN                  
                R4(I,J,K,L)=R4(I,J,K,L)/A4(I,J,K,L)                     
              ELSE                                                      
                R4(I,J,K,L)=R6(I,J,K,L,N,M)/A6(I,J,K,L,N,M)             
              ENDIF                                                     
            ELSE                                                        
              IF(.NOT.T6(I,J,K,L,N,M)) THEN                             
                T4(I,J,K,L)=.NOT.T4(I,J,K,L)                            
              ELSE                                                      
                T6(I,J,K,L,N,M)=T6(I,J,K,L,N,M).AND.T4(I,J,K,L)         
              ENDIF                                                     
            ENDIF                                                       
            TT=R4(I,J,K,L)/100.0D0                                      
            HH=R6(I,J,K,L,N,M)/100.0D0                                  
            SN=SIN(TT)                                                  
            XSIN=SIN(HH)                                                
            CS=1.0D0-SN                                                 
            XCOS=1.0D0-XSIN                                             
            IS4(I,J,K,L)=SN*100.0D0                                     
            IC4(I,J,K,L)=CS*100.0D0                                     
            IXS6(I,J,K,L,N,M)=XSIN*100.0D0                              
            IXC6(I,J,K,L,N,M)=XCOS*100.0D0                              
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
         PRINT *,T4,T6,IS4,IC4,R2                                       
         END                                                            
