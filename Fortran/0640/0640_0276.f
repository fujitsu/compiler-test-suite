      PARAMETER (N1=10,N2=10,N3=1)                                      
      REAL A(N3:N1,N3:N2,N1),B(N3:N1,N3:N2,N1)                          
      DATA A,B/1000*1.0,1000*2.0/                                       

      DO 10 I=1,N2                                                      
       DO 10 J=1,N1                                                     
        A(1,1,I) = A(1,1,I) + B(I,J,1) * 2.                             
   10 CONTINUE                                                          
      PRINT *,A                                                         
      END                                                               
