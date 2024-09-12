      REAL A(1:10,1:10),B(10,1:10)                                      
      DATA A,B/100*1.0,100*2.0/                                         
      CALL  SUB(A,B,0,1,10,-1)                                          
      END                                                               
      SUBROUTINE  SUB(A,B,N1,N2,N3,N4)                                  
      DIMENSION   A(N1+N2:N1+10,N4+2:N3),B(N1+N2:N1+10,N4+2:N3)         
      DATA        IS/0/                                                 

      DO 10 I=N1+N2,10                                                  
       DO 10 J=N4+2,N3                                                  
        A(I,J) = A(I,J+IS) + B(I,J) * 2.                                
   10 CONTINUE                                                          
      PRINT  *,'NO.1 ',A                                                

      DO 20 I=N1+N2,10                                                  
       DO 20 J=N4+2,N3                                                  
        IF(I.EQ.J) THEN                                                 
          A(I,J) = A(I,J+IS) + B(I,J) * 2.                              
        ENDIF                                                           
   20 CONTINUE                                                          
      PRINT  *,'NO.2 ',A                                                
      RETURN                                                            
      END                                                               
