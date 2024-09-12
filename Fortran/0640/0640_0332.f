      PROGRAM MAIN                                                   
      IMPLICIT  REAL*8(D),LOGICAL*4(L)                                  
      DIMENSION   DA10(20),DA20(20),DA30(20),DA40(20),                  
     *            LD10(20),LD20(20),LD30(20),LD40(20),                  
     *            ID10(20),ID20(20),ID30(20)                            
      DATA   DA10,DA20,DA30,DA40/20*1.D0,20*2.D0,20*4.D0,20*3.D0/       
      DATA   LD10,LD20,LD30,LD40/80*.FALSE./                            
      DATA   ID10,ID20,ID30/30*1,30*2/                                  
      DVAL = 0.0D0                                                      
      DO 10 I=5,15,2                                                    
        DX = DA10(I) + DA20(I) + DA30(I)                                
        DY = DA10(I) + DA40(I) / DA20(I)                                
        DZ = FLOAT( ID20(I) * I )                                       
          DO 20 J=20,2,-1                                               
            IVAL = ID10(J) + J                                          
            DVAL = DVAL + DNINT( DSQRT(DA40(J)) )                       
            DA10(J) = DNINT( DX / DA10(J) ) - DA40(J)                   
            IF ( DX - DY ) 21,22,22                                     
 21           LD10(J) = .TRUE.                                          
              DA20(J) = DABS( DX - DY ) + DA30(J)                       
              GO TO 25                                                  
 22           LD20(J) = .TRUE.                                          
              DA30(J) = DZ + DMIN1( DA20(J),DA20(J-1) )                 
 25         CONTINUE                                                    
             IF ( DA10(J) .GE. DA20(J) ) LD30(J) = .TRUE.               
            IF ( I .LE. 10 ) THEN                                       
              LD40(J) = .NOT.LD10(J) .OR. LD20(J)                       
              DA40(J) = DMAX1( DA40(J),DX,DY,DZ )                       
            ELSE                                                        
              LD40(J) = LD10(J) .OR. .NOT.LD20(J)                       
              DA40(J) = DMIN1( DA40(J-1),DA30(J-1) )                    
            ENDIF                                                       
 20       CONTINUE                                                      
        ID10(I) = IVAL                                                  
        ID20(I) = ID30(I) + ID20(I)                                     
        ID30(I) = IDINT( DVAL )                                         
        IF ( LD10(I) .AND. LD20(I)  .OR.                                
     *        LD10(I) .AND. LD40(I)      )  THEN                        
          LD30(I) = .TRUE.                                              
          DA10(1) = DA10(1) + DX + DY - DZ                              
        ENDIF                                                           
 10   CONTINUE                                                          
      WRITE(6,*) '(DA10) ',DA10                                         
      WRITE(6,*) ' (ID10) ',ID10                                        
      WRITE(6,*) ' (LD10) ',LD10                                        
      WRITE(6,*) ' (DA20) ',DA20                                        
      WRITE(6,*) ' (LD20) ',LD20                                        
      WRITE(6,*) ' (DA30) ',DA30                                        
      WRITE(6,*) ' (ID30) ',ID30                                        
      WRITE(6,*) ' (LD30) ',LD30                                        
      WRITE(6,*) ' (DA40) ',DA40                                        
      WRITE(6,*) ' (LD40) ',LD40                                        
      STOP                                                              
      END                                                               
