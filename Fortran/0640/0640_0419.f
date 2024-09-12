      PROGRAM MAIN
      INTEGER P(100),IP(100)                                            
      DO 10 I = 1,100                                                   
        P(I) = 0                                                        
        IF( MOD(I,2).EQ.0 ) P(I) = -I                                   
        IP(I) = I * I                                                   
        IF( MOD(I,3).EQ.1 ) IP(I) = - 2 * I + 1                         
   10 CONTINUE                                                          
      N = 50                                                            
      CALL ISNG(N,NBLACK,P,IP)                                          
      PRINT *,N,NBLACK,P,IP                                             
      STOP                                                              
      END                                                               
      SUBROUTINE ISNG(N,NBLACK,P,IP)                                    
      INTEGER P(N),IP(N)                                                
 200  NRED = 0                                                          
      NBLACK = 0                                                        

      DO 220 I = 1, N                                                   
         IF ( P(I) .LT. 0 ) GO TO 210                                   

         NRED = NRED + 1                                                
         IP(NRED) = I                                                   
         P(I) = NRED                                                    
         GO TO 220                                                      

 210     NBLACK = NBLACK + 1                                            
         J = N - NBLACK + 1                                             
         IP(J) = I                                                      
         P(I) = J                                                       
 220  CONTINUE                                                          
      RETURN                                                            
      END                                                               
