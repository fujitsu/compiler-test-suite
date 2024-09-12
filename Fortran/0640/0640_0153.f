      PROGRAM MAIN                                                   
      IMPLICIT  REAL*8(D),COMPLEX*16(C)                                 
      DIMENSION    DA10(20),DA20(20),DA30(20),DA40(20),                 
     *           DB10(20,20),DB20(20,20),DB30(20,20),                   
     *           DC10(20,20,20),DC20(20,20,20),DC30(20,20,20)           
      DIMENSION  CD10(20),CD20(20,20),CD30(20,20,20)                    

      DATA     DA10/20*1.D0/,DA20/20*2.D0/,DA30/20*3.D0/,DA40/20*4.D0/  
      DATA    DB10/400*2.D0/,DB20/400*3.D0/,DB30/400*4.D0/              
      DATA    DC10/8000*3.D0/,DC20/8000*5.D0/,DC30/8000*2.D0/           
      DATA    CD10/20*(2.D0,1.D0)/,CD20/400*(2.D0,3.D0)/                
      DATA    CD30/8000*(3.D0,5.D0)/                                    

      DO 10 I=1,10                                                      
        DA10(I) = DA20(I+1) + DA30(I)                                   
        DA40(I) = DA20(I+10) + DB10(I,20)                               
        DO 20 J=11,20                                                   
          DB10(I,J) = DB20(J,I+1) * DB30(J,I)                           
          DB30(I,J) = DB20(J,I+1) * DC10(J,I,10)                        
          DO 30 K=J,10,-1                                               
 30         DC10(K,I,10) = DC20(I,J,K) + DB30(I,K)                      
          DB20(J,I) = DMIN1( DB10(I,J),DB30(I,J) )                      
 20     CONTINUE                                                        
        DA20(I) = DA40(I+1) - DA10(I)                                   
 10   CONTINUE                                                          
      WRITE(6,*) ' (DA10) '                            
      WRITE(6,444)(DA10(K),K=1,10)                            
      WRITE(6,*) ' (DA20) '                            
      WRITE(6,444)(DA20(K),K=1,10)                            
      WRITE(6,*) ' (DA40) '                            
      WRITE(6,444)(DA40(K),K=1,10)                            
      WRITE(6,*) ' (DB10) '                
      WRITE(6,444)((DB10(I,J),I=1,10),J=11,20)                
      WRITE(6,*) ' (DB30) '                
      WRITE(6,444)((DB30(I,J),I=1,10),J=11,20)                
      WRITE(6,*) ' (DB20) '                
      WRITE(6,444)((DB20(I,J),I=11,20),J=1,10)                
      WRITE(6,*) ' (DC10) '          
      WRITE(6,444)((DC10(I,J,10),I=20,10,-1),J=1,10)          
      DO 40 I=1,10                                                      
        N = I + 10                                                      
        DX = DNINT( DSQRT(DA10(I)) )                                    
        DY = DNINT( DA20(I) * 2.D0 / DA40(N) )                          
        CD10(I) = DCMPLX(DX,DY)                                         
        CD20(N,I) = DCMPLX(DY,DX)                                       
         DO 50 J=N,10,-1                                                
           IF ( DB10(I,J) .GT. DB30(I,J) ) THEN                         
             DB20(N,J) = DB10(I,J)                                      
           ELSE                                                         
             DB20(I,J) = DB30(I,J)                                      
           ENDIF                                                        
           DO 60 K=20,2,-2                                              
             DC20(I,J,K) = DC10(I,J,K) + DC30(N,J,K)                    
             DC30(I,J,K) = DC10(I,J,K) * 2.0D0                          
             DX1 = DMAX1( DC20(I,J,K),DC30(I,J,K) )                     
             DY1 = DMAX1( DC20(I,J,K-1),DC30(I,J,K-1) )                 
             CD30(I,J,K) = DCMPLX(DX1,DY1)                              
 60        CONTINUE                                                     
           DB30(N,J) = DC10(I,J,20) - DB20(N,J)                         
 50      CONTINUE                                                       
         DX = DA30(I)                                                   
         DY = DA30(N)                                                   
         CD20(I,I) = DCMPLX(DX,DY) + CD10(N)                            
 40   CONTINUE                                                          
      WRITE(6,*) ' (CD10) '                                        
      WRITE(6,444)CD10                                        
      WRITE(6,*) ' (DB20) '             
      WRITE(6,444)((DB20(I,J),I=1,20),J=20,10,-1)             
      WRITE(6,*) ' (DB30) '            
      WRITE(6,444)((DB30(I,J),I=11,20),J=20,10,-1)            
      WRITE(6,*) ' (CD20) '                          
      WRITE(6,444)(CD20(K,K),K=1,10)                          
      WRITE(6,*) ' (DC20) '          
      WRITE(6,444)(((DC20(I,J,K),I=1,10),J=20,10,-1),K=20,2,-2)
      WRITE(6,*) ' (DC30) '          
      WRITE(6,444)(((DC30(I,J,K),I=1,10),J=20,10,-1),K=20,2,-2)
      WRITE(6,*) ' (CD30) '          
      WRITE(6,*)(((CD30(I,J,K),I=1,10),J=20,10,-1),K=20,2,-2)
      IT1 = 1                                                           
      IT2 = 2                                                           
      DO 70 I=1,20                                                      
        DA30(I) = DMIN1( DA20(I),DA40(I) ) * DA10(I)                    
        DB20(I,15) = DA30(I) - DC20(I,15,10)                            
        DO 80 J=5,15                                                    
          DB30(I,J) = DB10(I,J) - DB20(I,J)                             
           DO 90 K=2,10                                                 
 90          DC20(I,J,K) = DC10(I,J,K) + DA10(K)                        
          CD20(I,J) = CD30(I,J,J) + CD10(J)                             
 80     CONTINUE                                                        
        DA40(I) = DB30(I,5) - DIMAG(CD10(I))                            
 70   CONTINUE                                                          
      WRITE(6,*) ' (DA30) '                                        
      WRITE(6,444) DA30                                        
      WRITE(6,*) ' (DA40) '                                  
      WRITE(6,444)DA40                                   
      WRITE(6,*) ' (DB20) '                         
      WRITE(6,444)(DB20(K,15),K=1,20)                         
      WRITE(6,*) ' (DB30) '                 
      WRITE(6,444)((DB30(I,J),I=1,20),J=5,15)                 
      WRITE(6,*) ' (CD20) '                 
      WRITE(6,444)((CD20(I,J),I=1,20),J=5,15)                 
      WRITE(6,*) ' (DC20) '                                        
      WRITE(6,444)DC20                                        
 444  FORMAT(10G20.6)                                                   
      STOP                                                              
      END                                                               
