      PROGRAM  CV5002                                                   
      IMPLICIT  REAL*8(D),COMPLEX*16(C)                                 
      type STR
         REAL*8  DA10(20),DA20(20),DA30(20),DA40(20)
         REAL*8  DB10(20,20),DB20(20,20),DB30(20,20), DC10(20,20,20),DC20(20,20,20),DC30(20,20,20)
         COMPLEX*16  CD10(20),CD20(20,20),CD30(20,20,20)                    
      end type STR
      TYPE(STR) STR_DATA

      DATA    STR_DATA%DA10/20*1.D0/,STR_DATA%DA20/20*2.D0/,STR_DATA%DA30/20*3.D0/,STR_DATA%DA40/20*4.D0/  
      DATA    STR_DATA%DB10/400*2.D0/,STR_DATA%DB20/400*3.D0/,STR_DATA%DB30/400*4.D0/              
      DATA    STR_DATA%DC10/8000*3.D0/,STR_DATA%DC20/8000*5.D0/,STR_DATA%DC30/8000*2.D0/           
      DATA    STR_DATA%CD10/20*(2.D0,1.D0)/,STR_DATA%CD20/400*(2.D0,3.D0)/                
      DATA    STR_DATA%CD30/8000*(3.D0,5.D0)/                                    
      DO 10 I=1,10                                                      
        STR_DATA%DA10(I) = STR_DATA%DA20(I+1) + STR_DATA%DA30(I)                                   
        STR_DATA%DA40(I) = STR_DATA%DA20(I+10) + STR_DATA%DB10(I,20)                               
        DO 20 J=11,20                                                   
          STR_DATA%DB10(I,J) = STR_DATA%DB20(J,I+1) * STR_DATA%DB30(J,I)                           
          STR_DATA%DB30(I,J) = STR_DATA%DB20(J,I+1) * STR_DATA%DC10(J,I,10)                        
          DO 30 K=J,10,-1                                               
 30         STR_DATA%DC10(K,I,10) = STR_DATA%DC20(I,J,K) + STR_DATA%DB30(I,K)                      
          STR_DATA%DB20(J,I) = DMIN1( STR_DATA%DB10(I,J),STR_DATA%DB30(I,J) )                      
 20     CONTINUE                                                        
        STR_DATA%DA20(I) = STR_DATA%DA40(I+1) - STR_DATA%DA10(I)                                   
 10   CONTINUE                                                          
      WRITE(6,*) ' *** CVCT5002 *** NO.1 *** '                          
      WRITE(6,*) ' (DA10) '                            
      WRITE(6,444)(STR_DATA%DA10(K),K=1,10)                            
      WRITE(6,*) ' (DA20) '                            
      WRITE(6,444)(STR_DATA%DA20(K),K=1,10)                            
      WRITE(6,*) ' (DA40) '                            
      WRITE(6,444)(STR_DATA%DA40(K),K=1,10)                            
      WRITE(6,*) ' (DB10) '                
      WRITE(6,444)((STR_DATA%DB10(I,J),I=1,10),J=11,20)                
      WRITE(6,*) ' (DB30) '                
      WRITE(6,444)((STR_DATA%DB30(I,J),I=1,10),J=11,20)                
      WRITE(6,*) ' (DB20) '                
      WRITE(6,444)((STR_DATA%DB20(I,J),I=11,20),J=1,10)                
      WRITE(6,*) ' (DC10) '          
      WRITE(6,444)((STR_DATA%DC10(I,J,10),I=20,10,-1),J=1,10)          

      DO 40 I=1,10                                                      
        N = I + 10                                                      
        DX = DNINT( DSQRT(STR_DATA%DA10(I)) )                                    
        DY = DNINT( STR_DATA%DA20(I) * 2.D0 / STR_DATA%DA40(N) )                          
        STR_DATA%CD10(I) = DCMPLX(DX,DY)                                         
        STR_DATA%CD20(N,I) = DCMPLX(DY,DX)                                       
         DO 50 J=N,10,-1                                                
           IF ( STR_DATA%DB10(I,J) .GT. STR_DATA%DB30(I,J) ) THEN                         
             STR_DATA%DB20(N,J) = STR_DATA%DB10(I,J)                                      
           ELSE                                                         
             STR_DATA%DB20(I,J) = STR_DATA%DB30(I,J)                                      
           ENDIF                                                        
           DO 60 K=20,2,-2                                              
             STR_DATA%DC20(I,J,K) = STR_DATA%DC10(I,J,K) + STR_DATA%DC30(N,J,K)                    
             STR_DATA%DC30(I,J,K) = STR_DATA%DC10(I,J,K) * 2.0D0                          
             DX1 = DMAX1( STR_DATA%DC20(I,J,K),STR_DATA%DC30(I,J,K) )                     
             DY1 = DMAX1( STR_DATA%DC20(I,J,K-1),STR_DATA%DC30(I,J,K-1) )                 
             STR_DATA%CD30(I,J,K) = DCMPLX(DX1,DY1)                              
 60        CONTINUE                                                     
           STR_DATA%DB30(N,J) = STR_DATA%DC10(I,J,20) - STR_DATA%DB20(N,J)                         
 50      CONTINUE                                                       
         DX = STR_DATA%DA30(I)                                                   
         DY = STR_DATA%DA30(N)                                                   
         STR_DATA%CD20(I,I) = DCMPLX(DX,DY) + STR_DATA%CD10(N)                            
 40   CONTINUE                                                          
      WRITE(6,*) ' *** CVCT5002 ** NO.2 *** '                           
      WRITE(6,*) ' (CD10) '                                        
      WRITE(6,444)STR_DATA%CD10                                        
      WRITE(6,*) ' (DB20) '             
      WRITE(6,444)((STR_DATA%DB20(I,J),I=1,20),J=20,10,-1)             
      WRITE(6,*) ' (DB30) '            
      WRITE(6,444)((STR_DATA%DB30(I,J),I=11,20),J=20,10,-1)            
      WRITE(6,*) ' (CD20) '                          
      WRITE(6,444)(STR_DATA%CD20(K,K),K=1,10)                          
      WRITE(6,*) ' (DC20) '          
      WRITE(6,444)(((STR_DATA%DC20(I,J,K),I=1,10),J=20,10,-1),K=20,2,-2)
      WRITE(6,*) ' (DC30) '          
      WRITE(6,444)(((STR_DATA%DC30(I,J,K),I=1,10),J=20,10,-1),K=20,2,-2)
      WRITE(6,*) ' (CD30) '          
      WRITE(6,*)(((STR_DATA%CD30(I,J,K),I=1,10),J=20,10,-1),K=20,2,-2)

      IT1 = 1                                                           
      IT2 = 2                                                           
      DO 70 I=1,20                                                      
        STR_DATA%DA30(I) = DMIN1( STR_DATA%DA20(I),STR_DATA%DA40(I) ) * STR_DATA%DA10(I)                    
        STR_DATA%DB20(I,15) = STR_DATA%DA30(I) - STR_DATA%DC20(I,15,10)                            
        DO 80 J=5,15                                                    
          STR_DATA%DB30(I,J) = STR_DATA%DB10(I,J) - STR_DATA%DB20(I,J)                             
           DO 90 K=2,10                                                 
 90          STR_DATA%DC20(I,J,K) = STR_DATA%DC10(I,J,K) + STR_DATA%DA10(K)                        
          STR_DATA%CD20(I,J) = STR_DATA%CD30(I,J,J) + STR_DATA%CD10(J)                             
 80     CONTINUE                                                        
        STR_DATA%DA40(I) = STR_DATA%DB30(I,5) - DIMAG(STR_DATA%CD10(I))                            
 70   CONTINUE                                                          
      WRITE(6,*) ' **** CVCT5002 *** NO.3 **** '                        
      WRITE(6,*) ' (DA30) '                                        
      WRITE(6,444) STR_DATA%DA30                                        
      WRITE(6,*) ' (DA40) '                                  
      WRITE(6,444)STR_DATA%DA40                                   
      WRITE(6,*) ' (DB20) '                         
      WRITE(6,444)(STR_DATA%DB20(K,15),K=1,20)                         
      WRITE(6,*) ' (DB30) '                 
      WRITE(6,444)((STR_DATA%DB30(I,J),I=1,20),J=5,15)                 
      WRITE(6,*) ' (CD20) '                 
      WRITE(6,444)((STR_DATA%CD20(I,J),I=1,20),J=5,15)                 
      WRITE(6,*) ' (DC20) '                                        
      WRITE(6,444)STR_DATA%DC20                                        

 444  FORMAT(10G20.6)                                                   
      STOP                                                              
      END                                                               
