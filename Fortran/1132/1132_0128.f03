      PROGRAM  CV5008                                                   
      IMPLICIT  REAL*8(D),LOGICAL*4(L),COMPLEX*16(C)                    
      
      type STR
      REAL*8  DA10(20,20),DA20(20,20),DA30(20,20), DB10(20,20,20),DB20(20,20,20),DB30(20,20,20)
      COMPLEX*16 CD10(20,20),CD20(20,20),CD30(20,20,20)
      LOGICAL*4 LD10(20,20),LD20(20,20),LD30(20,20,20)   
   end type STR
   TYPE(STR) STR_DATA
   
      DATA   STR_DATA%DA10/400*2.D0/,STR_DATA%DA20/400*1.D0/,STR_DATA%DA30/400*4.D0/               
      DATA   STR_DATA%DB10/8000*4.D0/,STR_DATA%DB20/8000*2.D0/,STR_DATA%DB30/8000*3.D0/            
      DATA   STR_DATA%CD10/400*(1.D0,2.D0)/,STR_DATA%CD20/400*(2.D0,1.D0)/                
      DATA   STR_DATA%CD30/8000*(4.D0,2.D0)/                                     
      DATA   STR_DATA%LD10/400*.FALSE./,STR_DATA%LD20/400*.FALSE./,STR_DATA%LD30/8000*.FALSE./     
                                                                       
      ICNT1 = 0                                                         
      ICNT2 = 0                                                         
      DO 10 III=1,2                                                     
        DO 20 I1=2,10                                                   
         DO 20 J1=2,2*I1                                                
           STR_DATA%DA10(I1,J1) = STR_DATA%DA20(I1+1,J1) * STR_DATA%DA30(I1*2,J1)                  
           N = I1 + 10                                                  
           STR_DATA%DA10(N,J1) =  STR_DATA%DA20(I1+2,J1) * STR_DATA%DA30(I1*2-1,J1)                
           DX1 = DSQRT( STR_DATA%DA10(I1,J1) ) + STR_DATA%DA20(I1,J1)                     
           DY1 = STR_DATA%DB10(I1,J1,1) - STR_DATA%DA20(I1,J1) / 2.D0                     
           IF ( DX1 .GT. DY1 ) THEN                                     
             STR_DATA%LD10(I1,J1) = .TRUE.                                       
             STR_DATA%CD10(I1,J1) = DCMPLX( DX1,DY1 )                            
           ELSE                                                         
             STR_DATA%LD20(I1,J1) = .TRUE.                                       
             STR_DATA%CD20(I1,J1) = DCMPLX( DY1,DX1 )                            
           ENDIF                                                        
           STR_DATA%DA30(I1*2,J1) = DX1 + DY1                                    
            DO 30 K1=10,1,-1                                            
              STR_DATA%DB20(I1,J1,K1) = STR_DATA%DB10(I1,J1,K1) * 2.D0 - STR_DATA%DB30(I1,J1,K1)   
              STR_DATA%DB30(I1,J1,K1) = STR_DATA%DB10(I1+10,J1,K1) * 2.D0 - STR_DATA%DB20(I1,J1,K1+1)                 
              DX2 = DMAX1( STR_DATA%DB20(I1,J1,K1),STR_DATA%DB30(I1,J1,K1) )              
              DY2 = DDIM( STR_DATA%DB20(I1,J1,K1),STR_DATA%DB30(I1,J1,K1) )               
              IF ( DY2 ) 31,32,31                                       
 31             STR_DATA%LD30(I1,J1,K1) = .TRUE.                                 
 32           STR_DATA%CD30(I1,J1,K1) = DCMPLX( DX2,DY2 )                        
              STR_DATA%DB10(I1,J1,K1) = DX2 - DY2                                
 30         CONTINUE                                                    
           STR_DATA%DA20(I1,J1) = STR_DATA%DB10(I1-1,J1-1,10) + STR_DATA%DA30(I1,J1)               
 20     CONTINUE                                                        
                                                                       
        IF ( STR_DATA%LD10(2,III) ) THEN                                         
          WRITE(6,*) ' *** CVCT5008 *** VOLUME VECTORIZE *** '          
          DO 40 I2=1,20                                                 
            DO 40 J2=1,20                                               
              STR_DATA%DA10(I2,J2) = DREAL(STR_DATA%CD10(I2,J2)) + DIMAG(STR_DATA%CD20(I2,J2))     
              STR_DATA%DA20(I2,J2) = DIMAG(STR_DATA%CD10(I2,J2)) - DREAL(STR_DATA%CD20(I2,J2))     
                DO 40 K2=1,20                                           
                  STR_DATA%DB10(K2,I2,J2) = STR_DATA%DB30(K2,I2,J2) + ( STR_DATA%DB20(K2,I2,J2) - DIMAG(STR_DATA%CD30(K2,I2,J2)) )        
 40       CONTINUE                                                      
        ELSEIF ( STR_DATA%LD20(3,III) ) THEN                                     
          WRITE(6,*) ' *** CVCT5008 ** VECTORIZE BY CHANGED INDEX **'   
          DO 50 I3=1,20                                                 
           DO 50 J3=2,15                                                
            DO 60 K3=12,8,-1                                            
              CDX = CDSQRT( STR_DATA%CD30(I3,J3,K3) ) + (1.D0,1.D0)              
              DX3 = DNINT( DREAL(CDX) )                                 
              DY3 = DNINT( DIMAG(CDX) )                                 
              IF ( STR_DATA%LD30(I3,J3,K3) ) THEN                                
                DX3 = DNINT( DSQRT( STR_DATA%DA30(I3,K3) ) )                     
              ENDIF                                                     
              STR_DATA%DB20(I3,J3,K3) = STR_DATA%DB20(I3,J3+1,K3) + DMIN1(DX3,DY3)        
 60         CONTINUE                                                    
            STR_DATA%DA30(I3,12) = STR_DATA%DA30(I3,12) + STR_DATA%DA10(I3,J3)                     
 50       CONTINUE                                                      
        ENDIF                                                           
        DO 70 I4=1,20                                                   
         DO 70 J4=1,20                                                  
           IF ( STR_DATA%LD10(I4,J4) ) THEN                                      
             ICNT1 = ICNT1 + 1                                          
           ENDIF                                                        
           DO 70 K4=1,20                                                
             IF ( STR_DATA%LD30(I4,J4,K4) ) THEN                                 
               ICNT2 = ICNT2 + 1                                        
             ENDIF                                                      
 70     CONTINUE                                                        
        WRITE(6,*) ' *** CVCT5008 ** NO.1 '                             
        WRITE(6,*) ' ICNT1 = ',ICNT1,' ICNT2 = ',ICNT2                  
 10   CONTINUE                                                          
                                                                       
      WRITE(6,*) ' *** CVCT5009 ** NO.2 *** '                           
      WRITE(6,*) ' (DA10) ',STR_DATA%DA10                                        
      WRITE(6,*) ' (DA20) ',STR_DATA%DA20                                        
      WRITE(6,*) ' (DA30) ',STR_DATA%DA30                                        
      WRITE(6,*) ' (CD10) ',STR_DATA%CD10                                        
      WRITE(6,*) ' (CD20) ',STR_DATA%CD20                                        
      WRITE(6,*) ' (DB10) ',(((STR_DATA%DB10(I,J,K),I=1,10),J=2,20,2),K=1,10)    
      WRITE(6,*) ' (DB20) ',(((STR_DATA%DB20(I,J,K),I=1,10),J=1,10),K=1,10)      
      WRITE(6,*) ' (DB30) ',(((STR_DATA%DB30(I,J,K),I=1,10),J=1,10),K=1,10)      
      WRITE(6,*) ' (CD30) ',(((STR_DATA%CD30(I,J,K),I=1,10),J=1,10),K=1,10)      
                                                                       
      STOP                                                              
      END                                                               
