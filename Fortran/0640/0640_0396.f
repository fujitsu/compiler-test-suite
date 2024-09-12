      PROGRAM MAIN                                                    
      CALL SUB01                                                        
      CALL SUB02                                                        
      CALL SUB03                                                        
      CALL SUB04                                                        
      CALL SUB05                                                        
      CALL SUB06                                                        
      CALL SUB07                                                        
      STOP                                                              
      END                                                               

      SUBROUTINE SUB01                                                  
      REAL * 4 RA(30),RB(0:30),RC(0:30)                                     
      INTEGER * 4 L,N,M,NN,MM                                           
      DATA L/1/,NN/1/,MM/-1/                                            
      RB = 0
      RC = 0
      CALL INIT(RA,RB,RC)                                               
      DO 20 I=1,10,NN                                                   
        DO 21 J=1,10                                                    
          RA(J) = RA(J+NN)                                              
 21     CONTINUE                                                        
        DO 22 K=10,20                                                   
          RA(K-NN) = RA(K)                                              
 22     CONTINUE                                                        
 20   CONTINUE                                                          
      DO 30 I=10,1,MM                                                   
        DO 31 J=1,10                                                    
          RB(J) = RB(J -MM)                                             
 31     CONTINUE                                                        
        DO 32 K=1,10                                                    
          RB(K+MM) = RB(K)                                              
 32     CONTINUE                                                        
 30   CONTINUE                                                          
      N = 1                                                             
      M = 10                                                            
      DO 40 I=N,M ,L                                                    
        DO 41 J=1,10                                                    
          RC(J) = RC(J+L)                                               
 41     CONTINUE                                                        
        DO 42 K=1,10                                                    
          RC(K-L) = RC(K)                                               
 42     CONTINUE                                                        
 40   CONTINUE                                                          
      WRITE(6,*) '** SUB01 OUTPUT ***'                                  
      WRITE(6,*) 'RA=',RA,'RB=',RB,'RC=',RC                             
      RETURN                                                            
      END                                                               

      SUBROUTINE SUB02                                                  
      REAL * 4 RA(30),RB(30),RC(30)                                     
      INTEGER * 4 L,N,M,LL,NN,MM                                        
      DATA M/10/,L/-10/,NN/1/,MM/-10/,N1/1/                             
      N = 1                                                             
      CALL INIT(RA,RB,RC)                                               
      DO 10 I=N,M                                                       
        DO 11 J=11,20                                                   
          RA(J) = RA(J+M)                                               
 11     CONTINUE                                                        
        DO 12 K=11,20                                                   
          RA(K-M) = RA(K)                                               
 12     CONTINUE                                                        
 10    CONTINUE                                                         
      LL = -1                                                           
      DO 20 I=L,LL,+1                                                   
        DO 21 J=11,20                                                   
          RA(J) = RA(J-L)                                               
 21     CONTINUE                                                        
        DO 22 K=11,20                                                   
          RA(K+L) = RA(K)                                               
 22     CONTINUE                                                        
 20    CONTINUE                                                         
      NN = -1                                                           
      DO 30 I=NN,MM,-1                                                  
        DO 31 J=11,20                                                   
          RA(J) = RA(J-MM)                                              
 31     CONTINUE                                                        
        DO 32 K=11,20                                                   
          RA(K+MM) = RA(K)                                              
 32     CONTINUE                                                        
 30    CONTINUE                                                         
      M = 10                                                            
      DO 40 I=N1,M ,-1                                                  
        DO 41 J=11,20                                                   
          RA(J) = RA(J+N1)                                              
 41     CONTINUE                                                        
        DO 42 K=11,20                                                   
          RA(K-N1) = RA(K)                                              
 42     CONTINUE                                                        
 40    CONTINUE                                                         
       WRITE(6,*) '** SUB02 OUTPUT **'                                  
       WRITE(6,*) 'RA=',RA,'RB=',RB,'RC=',RC                            
      RETURN                                                            
      END                                                               

      SUBROUTINE SUB03                                                  
      REAL * 4 RA(31),RB(-9:30),RC(30)                                     
      INTEGER * 4 L,N,M,LL                                              
      DATA M/-10/,L/10 /,LL/-1/                                         
      RA=0
      RB=0
      CALL INIT(RA,RB,RC)                                               
      N = 1                                                             
      DO 10 I=1,10,1                                                    
        DO 11 J=N,10,1                                                  
          DO 12 K=1,10,N                                                
            RA(K) = RA(K+I)                                             
 12       CONTINUE                                                      
          DO 13 K1 =10,20,N                                             
            RA(K1+N) = RA(K1+J+1)                                       
 13       CONTINUE                                                      
 11     CONTINUE                                                        
 10   CONTINUE                                                          
      DO 20 I=-10,-1,1                                                  
        DO 21 J=M,-1,1                                                  
          DO 22 K=1,10                                                  
            RB(K+I) = RB(K)                                             
 22       CONTINUE                                                      
          DO 23 K1 =11,20                                               
            RB(K1) = RB(K1-J)                                           
 23       CONTINUE                                                      
 21     CONTINUE                                                        
 20   CONTINUE                                                          
      DO 30 I=10,1,-1                                                   
        DO 31 J=L,1,-1                                                  
          DO 32 K=10,20                                                 
            RB(K) = RB(K+I)                                             
 32       CONTINUE                                                      
          DO 33 K1 =1,10                                                
            RB(K1-J) = RB(K1)                                           
 33       CONTINUE                                                      
 31     CONTINUE                                                        
 30   CONTINUE                                                          
      LL = - 1                                                          
      DO 40 I=-1,-10,-1                                                 
        DO 41 J=LL,-10,-1                                               
          DO 42 K=11,20                                                 
            RB(K) = RB(K-I)                                             
 42       CONTINUE                                                      
          DO 43 K1 =21,30                                               
            RB(K1+J) = RB(K1)                                           
 43       CONTINUE                                                      
 41     CONTINUE                                                        
 40   CONTINUE                                                          
      WRITE(6,*) '** SUB03 OUTPUT **'                                   
      WRITE(6,*) 'RA=',RA,'RB=',RB,'RC=',RC                             
      RETURN                                                            
      END                                                               

      SUBROUTINE SUB04                                                  
      REAL * 4 RA(30),RB(30),RC(30)                                     
      INTEGER * 4 L,N,LL,NN,MM                                          
      DATA N/10/,L/-10/, NN/-10/,LL/-9/,MM/-9/                          
      CALL INIT(RA,RB,RC)                                               
      DO 10 I=1,N+1                                                     
        DO 11 J=1,L+1,-1                                                
          DO 12 K=1,10                                                  
            RA(K+1) = RA(K+N+1)                                         
 12       CONTINUE                                                      
          DO 13 K1=11,20                                                
            RA(K1-1) = RA(K1-L)                                         
 13       CONTINUE                                                      
 11     CONTINUE                                                        
 10   CONTINUE                                                          
      DO 20 I=2,N+2                                                     
        DO 21 J=2,L+2,-1                                                
          DO 22 K=1,10                                                  
            RB(K+1) = RB(K+N)                                           
 22       CONTINUE                                                      
          DO 23 K1=11,20                                                
            RB(K1-2) = RB(K1-L)                                         
 23       CONTINUE                                                      
 21     CONTINUE                                                        
 20   CONTINUE                                                          
      DO 30 I=-1,NN-1,-1                                                
        DO 31 J=-1,LL-1,1                                               
          DO 32 K=1,10                                                  
            RC(K) = RC(K-NN)                                            
 32       CONTINUE                                                      
          DO 33 K1=11,20                                                
            RC(K1) = RC(K1+LL)                                          
 33       CONTINUE                                                      
 31     CONTINUE                                                        
 30   CONTINUE                                                          
      DO 40 I=-2,MM-2,-1                                                
        DO 41 J=-2,L-2,1                                                
          DO 42 K=1,10                                                  
            RC(K+1) = RC(K-MM+1)                                        
 42       CONTINUE                                                      
          DO 43 K1=11,20                                                
            RC(K1+1) = RC(K1+L+1)                                       
 43       CONTINUE                                                      
 41     CONTINUE                                                        
 40   CONTINUE                                                          
      WRITE(6,*) '** SUB04 OUTPUT **'                                   
      WRITE(6,*) 'RA=',RA,'RB=',RB,'RC=',RC                             
      RETURN                                                            
      END                                                               

      SUBROUTINE SUB05                                                  
      REAL * 4 RA(40),RB(30),RC(30)                                     
      INTEGER * 4 L,N,M,LL,NN,MM                                        
      DATA N/1/,M/10/,NN/10/,MM/1/,L/1/,LL/5/                           
      RA=0
      CALL INIT(RA,RB,RC)                                               
      DO 10 I=N,M                                                       
        DO 11 J=NN,MM,-1                                                
          DO 12 K=1,10                                                  
            RA(K+N) = RA(K+M)                                           
 12       CONTINUE                                                      
          DO 13 K1=20,30                                                
            RA(K1+MM) = RA(K1+NN)                                       
 13       CONTINUE                                                      
 11     CONTINUE                                                        
 10   CONTINUE                                                          
      DO 20 I=-M,-N                                                     
        DO 21 J=-NN,-MM,-1                                              
          DO 22 K=1,10                                                  
            RA(K+N) = RA(K+M)                                           
 22       CONTINUE                                                      
          DO 23 K1=11,20                                                
            RA(K1+MM) = RA(K1+NN)                                       
 23       CONTINUE                                                      
 21     CONTINUE                                                        
 20   CONTINUE                                                          
      DO 30 I=L*2,LL*2                                                  
        DO 33 KK=LL*3,L*3,-1                                            
          DO 31 J=15,25                                                 
            RA(J+L) = RA(J+LL)                                          
 31       CONTINUE                                                      
          DO 32 K=11,20                                                 
            RA(K+L) = RA(K+LL)                                          
 32       CONTINUE                                                      
 33     CONTINUE                                                        
 30   CONTINUE                                                          
      WRITE(6,*) '** SUB05 OUTPUT **'                                   
      WRITE(6,*) 'RA=',RA,'RB=',RB,'RC=',RC                             
      RETURN                                                            
      END                                                               

      SUBROUTINE SUB06                                                  
      REAL * 4 RA(30),RB(30),RC(30),RD(30),RE(30),RF(30)                
      INTEGER * 4 L,N,M,LL,NN,MM                                        
      DATA M/10/,MM/10/,N/10/,NN/10/,L/-10/,LL/-10/                     
      CALL INIT(RA,RB,RC)                                               
      CALL INIT(RD,RE,RF)                                               
      DO 10 I=1,M                                                       
        DO 11 J=MM,1,-1                                                 
          DO 12 K=1,10                                                  
            RA(K) = RA(K+M)                                             
 12       CONTINUE                                                      
          DO 13 K1=11,20                                                
            RA(K1) = RA(K1+MM)                                          
 13       CONTINUE                                                      
 11     CONTINUE                                                        
 10   CONTINUE                                                          
      DO 20 I=2,N                                                       
        DO 21 J=NN,2,-1                                                 
          DO 22 K=1,10                                                  
            RA(K) = RA(K+N)                                             
 22       CONTINUE                                                      
          DO 23 K1=11,20                                                
            RA(K1) = RA(K1+NN)                                          
 23       CONTINUE                                                      
 21     CONTINUE                                                        
 20   CONTINUE                                                          
      DO 30 I=1,M+3                                                     
        DO 31 J=MM+3,1,-1                                               
          DO 32 K=1,10                                                  
            RA(K+1) = RA(K+M)                                           
 32       CONTINUE                                                      
          DO 33 K1=11,20                                                
            RA(K1+1) = RA(K1+MM)                                        
 33       CONTINUE                                                      
 31     CONTINUE                                                        
 30   CONTINUE                                                          
      DO 40 I=1,M-1                                                     
        DO 41 J=MM-1,1,-1                                               
          DO 42 K=1,10                                                  
            RA(K+1) = RA(K+M)                                           
 42       CONTINUE                                                      
          DO 43 K1=11,20                                                
            RA(K1+1) = RA(K1+MM)                                        
 43       CONTINUE                                                      
 41     CONTINUE                                                        
 40   CONTINUE                                                          
      DO 50 I=1,M*2                                                     
        DO 51 J=MM*2,1,-1                                               
          DO 52 K=1,10                                                  
            RA(K) = RA(K+M)                                             
 52       CONTINUE                                                      
          DO 53 K1=11,20                                                
            RA(K1) = RA(K1+MM)                                          
 53       CONTINUE                                                      
 51     CONTINUE                                                        
 50   CONTINUE                                                          
      DO 60 I=1,-L                                                      
        DO 61 J=-LL,1,-1                                                
          DO 62 K=1,10                                                  
            RA(K) = RA(K-L)                                             
 62       CONTINUE                                                      
          DO 63 K1=11,20                                                
            RA(K1) = RA(K1-LL)                                          
 63       CONTINUE                                                      
 61     CONTINUE                                                        
 60   CONTINUE                                                          
      WRITE(6,*) '** SUB06 OUTPUT **'                                   
      WRITE(6,*) 'RA=',RA,'RB=',RB,'RC=',RC                             
      WRITE(6,*) 'RD=',RD,'RE=',RE,'RF=',RF                             
      RETURN                                                            
      END                                                               

      SUBROUTINE SUB07                                                  
      REAL * 4 RA(30),RB(30),RC(30),RD(30),RE(30),RF(30)                
      INTEGER * 4 L,N,M,LL,NN,MM                                        
      DATA M/10/,MM/10/,N/10/,NN/10/,L/-10/,LL/-10/,M1/4/,MM1/4/        
      CALL INIT(RA,RB,RC)                                               
      CALL INIT(RD,RE,RF)                                               
      DO 10 I=M,1,-1                                                    
        DO 11 J=1,MM,1                                                  
          DO 12 K=1,10                                                  
            RA(K) = RA(K+M)                                             
 12       CONTINUE                                                      
          DO 13 K1=11,20                                                
            RA(K1) = RA(K1+MM)                                          
 13       CONTINUE                                                      
 11     CONTINUE                                                        
 10   CONTINUE                                                          
      DO 20 I=N,2,-1                                                    
        DO 21 J=2,NN                                                    
          DO 22 K=1,10                                                  
            RB(K) = RB(K+N)                                             
 22       CONTINUE                                                      
          DO 23 K1=11,20                                                
            RB(K1) = RB(K1+NN)                                          
 23       CONTINUE                                                      
 21     CONTINUE                                                        
 20   CONTINUE                                                          
      DO 30 I=M+3,1,-1                                                  
        DO 31 J=1,MM+3                                                  
          DO 32 K=1,10                                                  
            RC(K+1) = RC(K+M)                                           
 32       CONTINUE                                                      
          DO 33 K1=11,20                                                
            RC(K1+1) = RC(K1+MM)                                        
 33       CONTINUE                                                      
 31     CONTINUE                                                        
 30   CONTINUE                                                          
      DO 40 I=M-1,1,-1                                                  
        DO 41 J=1,MM-1,1                                                
          DO 42 K=1,10                                                  
            RD(K+1) = RD(K+M)                                           
 42       CONTINUE                                                      
          DO 43 K1=11,20                                                
            RD(K1+1) = RD(K1+MM)                                        
 43       CONTINUE                                                      
 41     CONTINUE                                                        
 40   CONTINUE                                                          
      DO 50 I=M1*2,1,-1                                                 
        DO 51 J=1,MM1*2,1                                               
          DO 52 K=1,10                                                  
            RE(K) = RE(K+M1)                                            
 52       CONTINUE                                                      
          DO 53 K1=11,20                                                
            RE(K1) = RE(K1+MM1)                                         
 53       CONTINUE                                                      
 51     CONTINUE                                                        
 50   CONTINUE                                                          
      DO 60 I=-L,1,-1                                                   
        DO 61 J=1,-LL,1                                                 
          DO 62 K=1,10                                                  
            RF(K) = RF(K-L)                                             
 62       CONTINUE                                                      
          DO 63 K1=11,20                                                
            RF(K1) = RF(K1-LL)                                          
 63       CONTINUE                                                      
 61     CONTINUE                                                        
 60   CONTINUE                                                          
      WRITE(6,*) '** SUB07 OUTPUT **'                                   
      WRITE(6,*) 'RA=',RA,'RB=',RB,'RC=',RC                             
      WRITE(6,*) 'RD=',RD,'RE=',RE,'RF=',RF                             
      RETURN                                                            
      END                                                               
      SUBROUTINE INIT(A,B,C)                                            
      REAL * 4 A(30),B(30),C(30)                                        
      DO 10 I=1,30                                                      
        A(I) = I                                                        
        B(I) = A(I) + 1.                                                
        C(I) = A(I) + B(I)                                              
 10   CONTINUE                                                          
      RETURN                                                            
      END                                                               
