      PROGRAM MAIN                                                    
      REAL * 4 A(30),B(30),C(30),D(30)                                  
      DATA A/10*1.,10*2.,10*3./                                         
      DATA B/10*4.,10*5.,10*6./                                         
      DATA C/10*7.,10*8.,10*9./                                         
      DATA D/10*10.,10*11.,10*12./                                      
      DATA  L1/10/,L2/10/,L3/-10/,L4/-10/,L5/10/,L6/-10/                
      DATA L7/-10/,L8/10/,L9/-10/,L10/10/,L11/-10/,L12/10/              

      N = 1                                                             
      DO 10 I=1,L1,1                                                    
        DO 11 J=N,L2,1                                                  
          DO 12 J1=1,-L3,1                                              
            DO 13 K1=1,10                                               
              A(K1) = A(K1+L1)                                          
              A(K1) = A(K1+L2)                                          
              A(K1) = A(K1-L3)                                          
 13         CONTINUE                                                    
            DO 14 K2=11,20                                              
              A(K2) = A(K2+L1)                                          
 14         CONTINUE                                                    
 12       CONTINUE                                                      
 11     CONTINUE                                                        
 10   CONTINUE                                                          

      N = 1                                                             
      DO 20 I=L4,-1,1                                                   
        DO 21 J=-L5,-1,1                                                
          DO 22 J1=L6,-N,-1                                             
            DO 23 K1 = 1,10                                             
              B(K1) = B(K1-L4)                                          
              B(K1) = B(K1+L5)                                          
              B(K1) = B(K1-L6)                                          
 23         CONTINUE                                                    
            DO 24 K2=1,10                                               
              B(K2) = B(K2-I)                                           
 24         CONTINUE                                                    
 22       CONTINUE                                                      
 21     CONTINUE                                                        
 20   CONTINUE                                                          

      DO 30 I=-1,L7,-1                                                  
        DO 31 J=-1,-L8,-1                                               
          DO 32 J2=-N,L9,-1                                             
            DO 33 K1 =1,10                                              
              C(K1) = C(K1-L7)                                          
              C(K1) = C(K1+L8)                                          
              C(K1) = C(K1-L9)                                          
 33         CONTINUE                                                    
            DO 34 K2=1,10                                               
              C(K2) = A(K2-I)                                           
 34         CONTINUE                                                    
 32       CONTINUE                                                      
 31     CONTINUE                                                        
 30   CONTINUE                                                          

      DO 40 I=L10,1,-1                                                  
        DO 41 J=-L11,1,-1                                               
          DO 42 J1=L12,N,-1                                             
            DO 43  K1=1,10                                              
              D(K1) = D(K1+L10)                                         
              D(K1) = D(K1-L11)                                         
              D(K1) = D(K1+L12)                                         
 43         CONTINUE                                                    
            DO 44 K2=1,10                                               
              D(K2) = D(K2+N)                                           
 44         CONTINUE                                                    
 42       CONTINUE                                                      
 41     CONTINUE                                                        
 40   CONTINUE                                                          
      WRITE(6,*) 'A=',A,'B=',B,'C=',C,'D=',D                            
      STOP                                                              
      END                                                               
