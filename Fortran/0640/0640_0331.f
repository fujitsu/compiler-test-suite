      PROGRAM MAIN                                                   
      IMPLICIT  REAL*8(D),COMPLEX*16(C),LOGICAL*4(L)                    
      DIMENSION   DA10(20),DA20(20),DA30(20),DA40(20),                  
     *            CD10(20),CD20(20),CD30(20),CD40(20),                  
     *            LD10(20),LD20(20),LD30(20),LD40(20)                   
      DATA     DA10/20*1.D0/,DA20/20*2.D0/,DA30/20*3.D0/,DA40/20*4.D0/  
      DATA     CD10/20*(2.D0,1.D0)/,CD20/20*(1.D0,4.D0)/                
      DATA     CD30/20*(3.D0,4.D0)/,CD40/20*(1.D0,2.D0)/                
      DATA     LD10/20*.FALSE./,LD20/20*.FALSE./,LD30/20*.FALSE./       
      DATA     LD40/20*.FALSE./                                         
      DO 10 I=2,20                                                      
        DA10(I) = DA40(I) / DA20(I) * DA30(I)                           
        DX = DA10(I) - DREAL(CD10(I))                                   
        DY = DA10(I) / DIMAG(CD40(I))                                   
        IF ( DX .GT. DY ) THEN                                          
          LD10(I) = .NOT.LD20(I) .OR. LD30(I)                           
          DZ = DA20(I) * DSQRT( DIMAG(CD30(I)) )                        
          IF ( DX - DZ ) 11,11,12                                       
 11         LD20(I) = .TRUE.                                            
            DA30(I) = ( DX - DZ ) * DA30(I)                             
            GO TO 20                                                    
 12       CONTINUE                                                      
            LD30(I) = .NOT. LD40(I-1)                                   
            DA40(I) = (DZ - DX) * 2.0D0 + DA40(I)                       
 20       CONTINUE                                                      
          DX = DMAX1( DX,DZ )                                           
        ENDIF                                                           
        CD10(I) = DCMPLX(DX,DY)                                         
        CD20(I) = CD20(I) - DCONJG(CD10(I))                             
 10   CONTINUE                                                          
      WRITE(6,*) ' (DA10) ',DA10                                        
      WRITE(6,*) ' (DA30) ',DA30                                        
      WRITE(6,*) ' (DA40) ',DA40                                        
      WRITE(6,*) ' (CD10) ',CD10                                        
      WRITE(6,*) ' (LD10) ',LD10                                        
      WRITE(6,*) ' (LD20) ',LD20                                        
      WRITE(6,*) ' (LD30) ',LD30                                        
      DO 30 J=1,10                                                      
        N = J +10                                                       
        LD40(J) = .NOT.LD10(J) .OR. LD20(N)                             
        DX = DMAX1( DA10(J),DA20(J) )                                   
        DY = DMAX1( DA10(J),DA30(J) )                                   
        IF ( DX .EQ. DY ) THEN                                          
          LA = .NOT. LD30(J) .OR. LD40(N)                               
          IF ( LD40(J) ) THEN                                           
            DA20(J) = DA10(J) - DA30(N)                                 
          ELSE                                                          
            DA20(N) = DA10(J) - DA40(N)                                 
          ENDIF                                                         
          LD10(J) = LD20(J) .AND. LA                                    
          IF ( J .GT. 5 ) THEN                                          
            LD20(J) = .NOT.LA                                           
            DX = DA20(J) * DA30(N)                                      
            DY = DNINT( DSQRT(DX) )                                     
          ENDIF                                                         
        ENDIF                                                           
        CD20(J) = DCMPLX(DX,DY)                                         
        CD30(J) = DCMPLX(DY,DX) + CD10(N)                               
        IF ( N .GT. 15 ) GO TO 30                                       
          CD40(N) = CD10(J) - CD20(N) + CD30(J)                         
          LD40(J) =  LD10(J) .OR. LD20(J) .OR. LD30(N)                  
 30   CONTINUE                                                          
      WRITE(6,*) ' (LD10) ',LD10                                        
      WRITE(6,*) ' (DA20) ',DA20                                        
      WRITE(6,*) ' (CD20) ',CD20                                        
      WRITE(6,*) ' (LD20) ',LD20                                        
      WRITE(6,*) ' (CD30) ',CD30                                        
      WRITE(6,*) ' (LD40) ',LD40                                        
      WRITE(6,*) ' (CD40) ',CD40                                        
      STOP                                                              
      END                                                               
