      DIMENSION   A(101,11)                                             
      DATA   N2/2/                                                      

      DO 10 I=1,101                                                     
       DO 10 J=1,11                                                     
         A(I,J)  = I * J                                                
   10 CONTINUE                                                          

      DO 40 I=1,100                                                     
       DO 20 J=1,10                                                     
        A(I,J) = A(I,J+1) + 1.                                          
   20   CONTINUE                                                        
   40 CONTINUE                                                          
      PRINT  *,A                                                        

      DO 50 I=1,100                                                     
       DO 50 J=1,10                                                     
        A(I,J) = A(I+1,J) + 1.                                          
   50 CONTINUE                                                          
      PRINT  *,A                                                        

      DO 60 I=N2,100                                                    
       DO 60 J=1,10                                                     
        A(I,J) = A(I-1,J) + 1.                                          
   60 CONTINUE                                                          
      PRINT  *,A                                                        
      END                                                               
