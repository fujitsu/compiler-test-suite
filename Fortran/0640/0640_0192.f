      PROGRAM MAIN                                                    
      REAL  A(1000,4)/4000*3/,S(1000)/1000*0.1/                         
      REAL  B(200,200)/40000*5/                                         
      DATA N/2/,M/999/,K/5/,NR/195/,NN/200/                             

      DO 10 I=N,M                                                       
       S(I)=0.                                                          
       DO 20 J=1,4                                                      
        S(I)=S(I)+A(I,J)                                                
 20    CONTINUE                                                         
       A(I,4)=S(I)                                                      
 10   CONTINUE                                                          

      DO  50 I=K,NR                                                     
       ASUM = 0.                                                        
       DO  60 J = 1,NN                                                  
        ASUM = ASUM + B(I,J)                                            
60     CONTINUE                                                         
       B(I,K) = B(I,K) - ASUM                                           
50    CONTINUE                                                          
      WRITE(6,*) ' ASUM= ',ASUM, B(1,1),B(100,100),A(500,2)             
      WRITE(6,*) ' S(1)= ',S(1),' S(100)= ',S(100)                      
      STOP                                                              
      END                                                               
