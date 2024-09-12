      PROGRAM MAIN                                                   
      IMPLICIT  REAL*8(D),LOGICAL*4(L),COMPLEX*16(C)                    
      DIMENSION   DA10(20,20),DA20(20,20),DA30(20,20),                  
     *      DB10(20,20,20),DB20(20,20,20),DB30(20,20,20),               
     *      CD10(20,20),CD20(20,20),CD30(20,20,20),                     
     *      LD10(20,20),LD20(20,20),LD30(20,20,20)                      

      DATA   DA10/400*2.D0/,DA20/400*1.D0/,DA30/400*4.D0/               
      DATA   DB10/8000*4.D0/,DB20/8000*2.D0/,DB30/8000*3.D0/            
      DATA   CD10/400*(1.D0,2.D0)/,CD20/400*(2.D0,1.D0)/                
      DATA   CD30/8000*(4.D0,2.D0)/                                     
      DATA   LD10/400*.FALSE./,LD20/400*.FALSE./,LD30/8000*.FALSE./     
      ICNT1 = 0                                                         
      ICNT2 = 0                                                         
      DO 10 III=1,2                                                     
        DO 20 I1=2,10                                                   
         DO 20 J1=2,2*I1                                                
           DA10(I1,J1) = DA20(I1+1,J1) * DA30(I1*2,J1)                  
           N = I1 + 10                                                  
           DA10(N,J1) =  DA20(I1+2,J1) * DA30(I1*2-1,J1)                
           DX1 = DSQRT( DA10(I1,J1) ) + DA20(I1,J1)                     
           DY1 = DB10(I1,J1,1) - DA20(I1,J1) / 2.D0                     
           IF ( DX1 .GT. DY1 ) THEN                                     
             LD10(I1,J1) = .TRUE.                                       
             CD10(I1,J1) = DCMPLX( DX1,DY1 )                            
           ELSE                                                         
             LD20(I1,J1) = .TRUE.                                       
             CD20(I1,J1) = DCMPLX( DY1,DX1 )                            
           ENDIF                                                        
           DA30(I1*2,J1) = DX1 + DY1                                    
            DO 30 K1=10,1,-1                                            
              DB20(I1,J1,K1) = DB10(I1,J1,K1) * 2.D0 - DB30(I1,J1,K1)   
              DB30(I1,J1,K1) = DB10(I1+10,J1,K1) * 2.D0                 
     *                               - DB20(I1,J1,K1+1)                 
              DX2 = DMAX1( DB20(I1,J1,K1),DB30(I1,J1,K1) )              
              DY2 = DDIM( DB20(I1,J1,K1),DB30(I1,J1,K1) )               
              IF ( DY2 ) 31,32,31                                       
 31             LD30(I1,J1,K1) = .TRUE.                                 
 32           CD30(I1,J1,K1) = DCMPLX( DX2,DY2 )                        
              DB10(I1,J1,K1) = DX2 - DY2                                
 30         CONTINUE                                                    
           DA20(I1,J1) = DB10(I1-1,J1-1,10) + DA30(I1,J1)               
 20     CONTINUE                                                        
        IF ( LD10(2,III) ) THEN                                         
          DO 40 I2=1,20                                                 
            DO 40 J2=1,20                                               
              DA10(I2,J2) = DREAL(CD10(I2,J2)) + DIMAG(CD20(I2,J2))     
              DA20(I2,J2) = DIMAG(CD10(I2,J2)) - DREAL(CD20(I2,J2))     
                DO 40 K2=1,20                                           
                  DB10(K2,I2,J2) = DB30(K2,I2,J2)                       
     *              + ( DB20(K2,I2,J2) - DIMAG(CD30(K2,I2,J2)) )        
 40       CONTINUE                                                      
        ELSEIF ( LD20(3,III) ) THEN                                     
          DO 50 I3=1,20                                                 
           DO 50 J3=2,15                                                
            DO 60 K3=12,8,-1                                            
              CDX = CDSQRT( CD30(I3,J3,K3) ) + (1.D0,1.D0)              
              DX3 = DNINT( DREAL(CDX) )                                 
              DY3 = DNINT( DIMAG(CDX) )                                 
              IF ( LD30(I3,J3,K3) ) THEN                                
                DX3 = DNINT( DSQRT( DA30(I3,K3) ) )                     
              ENDIF                                                     
              DB20(I3,J3,K3) = DB20(I3,J3+1,K3) + DMIN1(DX3,DY3)        
 60         CONTINUE                                                    
            DA30(I3,12) = DA30(I3,12) + DA10(I3,J3)                     
 50       CONTINUE                                                      
        ENDIF                                                           
        DO 70 I4=1,20                                                   
         DO 70 J4=1,20                                                  
           IF ( LD10(I4,J4) ) THEN                                      
             ICNT1 = ICNT1 + 1                                          
           ENDIF                                                        
           DO 70 K4=1,20                                                
             IF ( LD30(I4,J4,K4) ) THEN                                 
               ICNT2 = ICNT2 + 1                                        
             ENDIF                                                      
 70     CONTINUE                                                        
        WRITE(6,*) ' ICNT1 = ',ICNT1,' ICNT2 = ',ICNT2                  
 10   CONTINUE                                                          
      WRITE(6,*) ' (DA10) ',DA10                                        
      WRITE(6,*) ' (DA20) ',DA20                                        
      WRITE(6,*) ' (DA30) ',DA30                                        
      WRITE(6,*) ' (CD10) ',CD10                                        
      WRITE(6,*) ' (CD20) ',CD20                                        
      WRITE(6,*) ' (DB10) ',(((DB10(I,J,K),I=1,10),J=2,20,2),K=1,10)    
      WRITE(6,*) ' (DB20) ',(((DB20(I,J,K),I=1,10),J=1,10),K=1,10)      
      WRITE(6,*) ' (DB30) ',(((DB30(I,J,K),I=1,10),J=1,10),K=1,10)      
      WRITE(6,*) ' (CD30) ',(((CD30(I,J,K),I=1,10),J=1,10),K=1,10)      
      STOP                                                              
      END                                                               
