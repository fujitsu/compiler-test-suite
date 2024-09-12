      PROGRAM MAIN                                                   
      REAL * 4  A(10,10),B(10,10),C(10,10)                              
      DATA      A,B,C/300*1/,N/10/                                      
      DO 20 I=1,N                                                       
        DO 10 J=1,I                                                     
         A(J,I) = C(J,J)*2                                              
         B(J,I) = C(I,I)*2                                              
   10   CONTINUE                                                        
   20 CONTINUE                                                          
      WRITE(6,*) A(9,9),B(3,3)                                          
      END                                                               
