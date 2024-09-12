      PROGRAM MAIN                                                   
      IMPLICIT  REAL*8(D),COMPLEX*16(C)                                 
      DIMENSION    DA10(30),DA20(30),DB10(20,20),DB20(20,20),           
     *             DB30(20,20),DC10(20,20,20),DC20(20,20,20),           
     *             DC30(20,20,20)                                       
      DIMENSION    CD10(30),CD20(30),CD30(20,20),CD40(20,20),           
     *             CD50(20,20,20)                                       

      DATA   DA10/30*1.D0/,DA20/30*2.D0/,DB10/400*3.D0/,DB20/400*4.D0/  
      DATA   DB30/400*5.D0/,DC10/8000*2.0D0/,DC20/8000*4.D0/            
      DATA   DC30/8000*6.D0/                                            
      DATA   CD10/30*(1.D0,2.D0)/,CD20/30*(4.D0,2.D0)/                  
      DATA   CD30/400*(2.D0,1.D0)/,CD40/400*(5.D0,3.D0)/                
      DATA   CD50/8000*(6.D0,3.D0)/                                     

      IND = 1                                                           
      DO 10 I=11,20                                                     
        DVAL1 = DA10(I) + DA20(I)                                       
        DX1 = DREAL( CD10(IND) + CD20(IND) )                            
        DY1 = DIMAG( CD20(IND) )                                        
        N = I + 10                                                      
        DA10(N) = DA20(N) + DY1                                         
         DO 20 J=I,2,-1                                                 
           DB10(I,J) = DB20(I,J) + DB30(J,I) + 2.D0                     
           DX2 = DNINT( DSQRT( DB10(I,J) ) )                            
           DY2 = 0.0D0                                                  
           IF ( DB10(I,J) .GT. 10.0D0 ) DY2 = DB10(I,J)                 
           CD30(I,J) = DCMPLX(DX2,DY2)                                  
            DO 20 K=1,10,2                                              
              DC10(I,J,K) = DC20(I,J,K+1) + DC30(I,J,K*2)               
              DC20(I,J,K) = DC10(I-1,J,K+1) * DC30(I,J,K*2-1)           
              DC30(I,J,K) = DNINT( DC20(I,J-1,K) / DC10(I,J,K+1) )      
 20      CONTINUE                                                       
         CD10(IND) = DCMPLX(DX1,DY1)                                    
         DA20(N) = DABS( DA10(I) - DA20(I) ) + DVAL1                    
         IND = IND + 1                                                  
 10   CONTINUE                                                          
      WRITE(6,*) ' (DA10) ',(DA10(K),K=11,20)                           
      WRITE(6,*) ' (DA20) ',(DA20(K),K=11,20)                           
      WRITE(6,*) ' (CD10) ',(CD10(K),K=1,10)                            
      WRITE(6,*) ' (DB10) ',((DB10(I,J),I=11,20),J=2,20)                
      WRITE(6,*) ' (CD30) ',((CD30(I,J),I=11,20),J=2,20)                
      WRITE(6,*) ' (DC10) ',(((DC10(I,J,K),I=11,20),J=2,20),K=1,10,2)   
      WRITE(6,*) ' (DC20) ',(((DC20(I,J,K),I=11,20),J=2,20),K=1,10,2)   
      WRITE(6,*) ' (DC30) ',(((DC30(I,J,K),I=11,20),J=2,20),K=1,10,2)   
      N1 = 2                                                            
      DO 30 I=2,15                                                      
       CDX = CDSQRT( CD10(I) ) + CD20(I)                                
       CDY = DCONJG( CDX )                                              
       DX1 = DNINT( DREAL(CDY) )                                        
       DY1 = DNINT( DIMAG(CDY) )                                        
       CD20(I) = DCMPLX(DX1,DY1)                                        
         DO 40 J=20,11,-1                                               
           DO 45 K=10,1,-2                                              
             DB20(J,K) = DB10(I,K) + DX1                                
             DB30(J,K) = DB10(J,K) + DIMAG( CD40(I,K) )                 
             DB10(K,J) = DMAX1( DB20(K,J),DB30(K,J) ) - DY1             
             DX2 = DB10(K+1,J)                                          
             DY2 = DB10(K,J)                                            
             CD40(I,K) = DCMPLX(DX2,DY2)                                
             CD50(I,J,K) = DCMPLX(DY2,DX2)                              
 45        CONTINUE                                                     
           DC10(I,J,J) = DC20(I,I,J) - DC30(I,J,I)                      
           DC30(I,I,J) = DC10(J,J,I) - DC20(I,I,J)                      
 40      CONTINUE                                                       
       N = I - 1                                                        
       DA10(N) = DA10(I) + DC10(I,20,20)                                
       DA20(N) = DA20(I+N1) + DC30(I,1,1)                               
 30   CONTINUE                                                          
      WRITE(6,*) ' (DA10) ',(DA10(K),K=1,15)                            
      WRITE(6,*) ' (DA20) ',(DA20(K),K=1,15)                            
      WRITE(6,*) ' (CD20) ',(CD20(K),K=1,15)                            
      WRITE(6,*) ' (DB20) ',((DB20(I,J),I=20,11,-1),J=10,1,-2)          
      WRITE(6,*) ' (DB30) ',((DB30(I,J),I=20,11,-1),J=10,1,-2)          
      WRITE(6,*) ' (DB10) ',((DB10(I,J),I=10,1,-2),J=20,11,-1)          
      WRITE(6,*) ' (CD40) ',((CD40(I,J),I=1,15),J=10,1,-2)              
      WRITE(6,*) ' (CD50) ',(((CD50(I,J,K),I=1,15),J=20,11,-1)          
     *                                           ,K=10,1,-2)            
      WRITE(6,*) ' (DC10) ',((DC10(I,J,J),I=1,15),J=20,11,-1)           
      WRITE(6,*) ' (DC30) ',((DC30(I,J,J),I=1,15),J=20,11,-1)           
      STOP                                                              
      END                                                               
