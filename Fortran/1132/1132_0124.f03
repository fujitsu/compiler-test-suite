      PROGRAM  CV5004                                                   
      IMPLICIT  REAL*8(D),COMPLEX*16(C)
      type STR
      REAL*8  DA10(30),DA20(30),DB10(20,20),DB20(20,20),DB30(20,20),DC10(20,20,20),DC20(20,20,20),DC30(20,20,20)
      COMPLEX*16  CD10(30),CD20(30),CD30(20,20),CD40(20,20),CD50(20,20,20)                                       
      end type STR
      TYPE(STR) STR_DATA

      DATA   STR_DATA%DA10/30*1.D0/,STR_DATA%DA20/30*2.D0/,STR_DATA%DB10/400*3.D0/,STR_DATA%DB20/400*4.D0/  
      DATA   STR_DATA%DB30/400*5.D0/,STR_DATA%DC10/8000*2.0D0/,STR_DATA%DC20/8000*4.D0/            
      DATA   STR_DATA%DC30/8000*6.D0/                                            
      DATA   STR_DATA%CD10/30*(1.D0,2.D0)/,STR_DATA%CD20/30*(4.D0,2.D0)/                  
      DATA   STR_DATA%CD30/400*(2.D0,1.D0)/,STR_DATA%CD40/400*(5.D0,3.D0)/                
      DATA   STR_DATA%CD50/8000*(6.D0,3.D0)/                                     
      IND = 1                                                           
      DO 10 I=11,20                                                     
        DVAL1 = STR_DATA%DA10(I) + STR_DATA%DA20(I)                                       
        DX1 = DREAL( STR_DATA%CD10(IND) + STR_DATA%CD20(IND) )                            
        DY1 = DIMAG( STR_DATA%CD20(IND) )                                        
        N = I + 10                                                      
        STR_DATA%DA10(N) = STR_DATA%DA20(N) + DY1                                         
         DO 20 J=I,2,-1                                                 
           STR_DATA%DB10(I,J) = STR_DATA%DB20(I,J) + STR_DATA%DB30(J,I) + 2.D0                     
           DX2 = DNINT( DSQRT( STR_DATA%DB10(I,J) ) )                            
           DY2 = 0.0D0                                                  
           IF ( STR_DATA%DB10(I,J) .GT. 10.0D0 ) DY2 = STR_DATA%DB10(I,J)                 
           STR_DATA%CD30(I,J) = DCMPLX(DX2,DY2)                                  
            DO 20 K=1,10,2                                              
              STR_DATA%DC10(I,J,K) = STR_DATA%DC20(I,J,K+1) + STR_DATA%DC30(I,J,K*2)               
              STR_DATA%DC20(I,J,K) = STR_DATA%DC10(I-1,J,K+1) * STR_DATA%DC30(I,J,K*2-1)           
              STR_DATA%DC30(I,J,K) = DNINT( STR_DATA%DC20(I,J-1,K) / STR_DATA%DC10(I,J,K+1) )      
 20      CONTINUE                                                       
         STR_DATA%CD10(IND) = DCMPLX(DX1,DY1)                                    
         STR_DATA%DA20(N) = DABS( STR_DATA%DA10(I) - STR_DATA%DA20(I) ) + DVAL1                    
         IND = IND + 1                                                  
 10   CONTINUE                                                          
      WRITE(6,*) ' **** CVCT5004 *** NO.1 **** '                        
      WRITE(6,*) ' (DA10) ',(STR_DATA%DA10(K),K=11,20)                           
      WRITE(6,*) ' (DA20) ',(STR_DATA%DA20(K),K=11,20)                           
      WRITE(6,*) ' (CD10) ',(STR_DATA%CD10(K),K=1,10)                            
      WRITE(6,*) ' (DB10) ',((STR_DATA%DB10(I,J),I=11,20),J=2,20)                
      WRITE(6,*) ' (CD30) ',((STR_DATA%CD30(I,J),I=11,20),J=2,20)                
      WRITE(6,*) ' (DC10) ',(((STR_DATA%DC10(I,J,K),I=11,20),J=2,20),K=1,10,2)   
      WRITE(6,*) ' (DC20) ',(((STR_DATA%DC20(I,J,K),I=11,20),J=2,20),K=1,10,2)   
      WRITE(6,*) ' (DC30) ',(((STR_DATA%DC30(I,J,K),I=11,20),J=2,20),K=1,10,2)   

      N1 = 2                                                            
      DO 30 I=2,15                                                      
       CDX = CDSQRT( STR_DATA%CD10(I) ) + STR_DATA%CD20(I)                                
       CDY = DCONJG( CDX )                                              
       DX1 = DNINT( DREAL(CDY) )                                        
       DY1 = DNINT( DIMAG(CDY) )                                        
       STR_DATA%CD20(I) = DCMPLX(DX1,DY1)                                        
         DO 40 J=20,11,-1                                               
           DO 45 K=10,1,-2                                              
             STR_DATA%DB20(J,K) = STR_DATA%DB10(I,K) + DX1                                
             STR_DATA%DB30(J,K) = STR_DATA%DB10(J,K) + DIMAG( STR_DATA%CD40(I,K) )                 
             STR_DATA%DB10(K,J) = DMAX1( STR_DATA%DB20(K,J),STR_DATA%DB30(K,J) ) - DY1             
             DX2 = STR_DATA%DB10(K+1,J)                                          
             DY2 = STR_DATA%DB10(K,J)                                            
             STR_DATA%CD40(I,K) = DCMPLX(DX2,DY2)                                
             STR_DATA%CD50(I,J,K) = DCMPLX(DY2,DX2)                              
 45        CONTINUE                                                     
           STR_DATA%DC10(I,J,J) = STR_DATA%DC20(I,I,J) - STR_DATA%DC30(I,J,I)                      
           STR_DATA%DC30(I,I,J) = STR_DATA%DC10(J,J,I) - STR_DATA%DC20(I,I,J)                      
 40      CONTINUE                                                       
       N = I - 1                                                        
       STR_DATA%DA10(N) = STR_DATA%DA10(I) + STR_DATA%DC10(I,20,20)                                
       STR_DATA%DA20(N) = STR_DATA%DA20(I+N1) + STR_DATA%DC30(I,1,1)                               
 30   CONTINUE                                                          
      WRITE(6,*) ' **** CVCT5004 *** NO.2 **** '                        
      WRITE(6,*) ' (DA10) ',(STR_DATA%DA10(K),K=1,15)                            
      WRITE(6,*) ' (DA20) ',(STR_DATA%DA20(K),K=1,15)                            
      WRITE(6,*) ' (CD20) ',(STR_DATA%CD20(K),K=1,15)                            
      WRITE(6,*) ' (DB20) ',((STR_DATA%DB20(I,J),I=20,11,-1),J=10,1,-2)          
      WRITE(6,*) ' (DB30) ',((STR_DATA%DB30(I,J),I=20,11,-1),J=10,1,-2)          
      WRITE(6,*) ' (DB10) ',((STR_DATA%DB10(I,J),I=10,1,-2),J=20,11,-1)          
      WRITE(6,*) ' (CD40) ',((STR_DATA%CD40(I,J),I=1,15),J=10,1,-2)              
      WRITE(6,*) ' (CD50) ',(((STR_DATA%CD50(I,J,K),I=1,15),J=20,11,-1),K=10,1,-2)            
      WRITE(6,*) ' (DC10) ',((STR_DATA%DC10(I,J,J),I=1,15),J=20,11,-1)           
      WRITE(6,*) ' (DC30) ',((STR_DATA%DC30(I,J,J),I=1,15),J=20,11,-1)           
                                                                       
      STOP                                                              
      END                                                               
