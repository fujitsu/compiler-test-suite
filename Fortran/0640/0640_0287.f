        REAL*8 ASIN(100,100),B(100,100),C(100,100)                      
        REAL*8 XSIN(100,100)                                            
        DATA N2,N3/100,1/                                               
        REAL*8 Pi                                                      
        INTEGER ISIN(200,100)                                           
        DATA ISIN/20000*0/                                              
        INTEGER ICOS(200,100)                                           
        DATA ICOS/20000*0/                                              
        Pi=ATAN(1.0)*4                                                 
        S2=-0.01D0                                                      
        S1=-0.001D0                                                     

        DO 1 I=1,N2                                                     
        DO 1 J=1,N2                                                     
          S1=S1+0.01D0                                                  
          S2=S2+0.001D0                                                 
          B(I,J)=S1                                                     
          C(I,J)=S2                                                     
 1      CONTINUE                                                        

        DO 10 I=1,N2                                                    
        DO 20 J=1,100                                                   
          ASIN(I,J)=SIN(B(I,J))                                         
          XSIN(I,J)=SIN(C(I,J))                                         
 20     CONTINUE                                                        
 10     CONTINUE                                                        

        DO 30 J=1,N2                                                    
        DO 40 I=1,N2                                                    
         IZ=ASIN(I,J)*100.0D0                                           
         IY=1.0-XSIN(I,J)*100.0D0                                       
         ISIN(100+IZ,I)=1                                               
         ICOS(100+IY,I)=1                                               
 40     CONTINUE                                                        
 30     CONTINUE                                                        

        PRINT *,ISIN,ICOS
        END                                                             
