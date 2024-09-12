      REAL A(1000),B(1000),C(1000),X(1000)

      DO 1 I=1,1000                       
        B(I)=I                            
 1         C(I)=I                         

      DO 10 I=1,1000                      
        A(I)=B(I)+C(I)                    
        B(I)=SIN(A(I))                    
        X(I)=B(I)+C(I)                    
 10     CONTINUE                          
      PRINT *,X                           
      STOP                                
      END                                 
