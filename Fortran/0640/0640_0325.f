      PROGRAM MAIN                                                    
      DATA  N10/10/                                                     
      INTEGER*4   L10(10),L20(10,10),L1S,L2S                            
      REAL*4      A(10),B(10),C(10),D(10,10),E(10,10),S1,S2             
      REAL*8      DA(10),DB(10),DC(10),DD(10,10),DE(10,10),D1,D2        
      REAL*8      QA(10),QB(10),QC(10),QD(10,10),QE(10,10)              
      DO 10 I=1,10                                                      
        L10(I) = I                                                      
        A(I) = 0.0                                                      
        B(I) = I                                                        
        C(I) = I*2                                                      
        DA(I) = 0.0                                                     
        DB(I) = I                                                       
        DC(I) = -I                                                      
        QA(I) = 0.0                                                     
        QB(I) = I                                                       
        QC(I) = I*4                                                     
        DO 10 J=1,10                                                    
          D(I,J) = J + I                                                
          E(I,J) = J - I                                                
          DD(I,J) = E(I,J)                                              
          DE(I,J) = E(I,J)  -I                                          
          QD(I,J) = I*J                                                 
          QE(I,J) = I-J                                                 
  10      L20(I,J) = J                                                  
      WRITE(6,*) L10,L20                                                
      WRITE(6,*) '----- NO.1 -----'                                     
      DO 100 I=1,N10                                                    
        A(L10(I)) = C(I)                                                
        DA(L10(I)) = DFLOAT(I)                                          
        B(I) = C(L10(I))                                                
        DB(I) = DC(L10(I))                                              
 100  CONTINUE                                                          
      WRITE(6,*) ' A    = ',A                                           
      WRITE(6,*) ' DA   = ',DA                                          
      WRITE(6,*) ' B    = ',B                                           
      WRITE(6,*) ' DB   = ',DB                                          
      WRITE(6,*) '----- NO.2 -----'                                     
      DO 200 I=1,N10                                                    
        A(L10(I)) = C(L10(I))                                           
        DA(L10(I)) = DC(L10(I))                                         
 200  CONTINUE                                                          
      WRITE(6,*) ' A    = ',A                                           
      WRITE(6,*) ' DA   = ',DA                                          
      WRITE(6,*) '----- NO.3 -----'                                     
      DO 300 I=1,N10                                                    
        A(L20(I,I)) = C(I)                                              
        DA(L20(I,I)) = DFLOAT(I)                                        
        B(I) = C(L20(I,I))                                              
        DB(I) = DC(L20(I,I))                                            
 300  CONTINUE                                                          
      WRITE(6,*) ' A    = ',A                                           
      WRITE(6,*) ' DA   = ',DA                                          
      WRITE(6,*) ' B    = ',B                                           
      WRITE(6,*) ' DB   = ',DB                                          
      WRITE(6,*) '----- NO.4 -----'                                     
      DO 400 I=1,N10                                                    
        A(L20(I,I)) = B(L20(I,I))                                       
        DA(L20(I,I)) = DB(L20(I,I))                                     
 400  CONTINUE                                                          
      WRITE(6,*) ' A    = ',A                                           
      WRITE(6,*) ' DA   = ',DA                                          
      WRITE(6,*) '----- NO.5 -----'                                     
      DO 500 I=1,N10                                                    
        A(L10(I)) = C(L10(I))                                           
        DA(L10(I)) = DC(L10(I))                                         
 500  CONTINUE                                                          
      WRITE(6,*) ' A    = ',A                                           
      WRITE(6,*) ' DA   = ',DA                                          
      WRITE(6,*) '----- NO.6 -----'                                     
      DO 600 I=1,N10                                                    
        L1S = L10(I)                                                    
        A(L1S) = B(L1S) + C(L1S)                                        
        DA(L10(I)) = DC(L1S)                                            
        QA(I) = QB(L1S)                                                 
 600  CONTINUE                                                          
      WRITE(6,*) ' A    = ',A                                           
      WRITE(6,*) ' DA   = ',DA                                          
      WRITE(6,*) ' QA   = ',QA                                          
      WRITE(6,*) '----- NO.7 -----'                                     
      DO 700 I=1,N10                                                    
        L2S = L20(I,I)                                                  
        A(L2S) = B(L2S) + C(L2S)                                        
        DA(L20(I,I)) = DC(L2S)                                          
        QA(I) = QB(L1S)                                                 
 700  CONTINUE                                                          
      WRITE(6,*) ' A    = ',A                                           
      WRITE(6,*) ' DA   = ',DA                                          
      WRITE(6,*) ' QA   = ',QA                                          
      WRITE(6,*) '----- NO.8 -----'                                     
      DO 800 I=1,N10                                                    
        L1S = L10(I)                                                    
        D(L1S,I) = E(L10(I),L1S) + C(L1S)                               
 801    DD(L10(I),L10(I)) = DE(L1S,L1S)                                 
        QD(I,L1S) = QE(L1S,L20(I,I))                                    
 800  CONTINUE                                                          
      WRITE(6,*) ' D    = ',D                                           
      WRITE(6,*) ' DD   = ',DD                                          
      WRITE(6,*) ' QD   = ',QD                                          
      WRITE(6,*) '----- NO.9 -----'                                     
      DO 900 I=1,N10                                                    
 901    L2S = L20(I,I)                                                  
        D(L2S,L20(I,I)) = E(L2S,L2S) + C(L2S)                           
        DD(L20(I,I),L20(I,I)) = DE(L20(I,I),L2S)                        
        QD(I,L20(I,I)) = QE(L2S,L2S)                                    
 900  CONTINUE                                                          
      WRITE(6,*) ' D    = ',D                                           
      WRITE(6,*) ' DD   = ',DD                                          
      WRITE(6,*) ' QD   = ',QD                                          
      STOP                                                              
      END                                                               





