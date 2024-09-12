      DATA      N1/10/,N2/10/,N3/10/                                    
      INTEGER*4 I10(11),I11(10),I12(10,10),I13(1,1),I14(10,10),         
     1          I15(10,11)                                              
      LOGICAL*4 L10(10),L11(10),L12(10),LS10                            
      DATA      I10/1,2,3,4,5,6,7,8,9,10,11/,I11/10*0/,I12/50*1,50*2/,  
     1          I13/0/,I14/10*1,10*2,10*3,10*4,10*5,50*6/               
      DATA      L10/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,       
     1              .TRUE.,.FALSE.,.TRUE.,.FALSE./                      
     2          L11/.TRUE.,.TRUE.,.FALSE.,.FALSE.,.FALSE.,.TRUE.,       
     3              .TRUE.,.TRUE.,.FALSE.,.FALSE./                      
     4          LS10/.TRUE./                                            
      DATA      I10S/5/,I15/20*1,30*2,40*3,20*4/,                       
     1          L12/2*.TRUE.,2*.FALSE.,2*.TRUE.,2*.FALSE.,2*.TRUE./     
      data i23/0/

      INTEGER*4  I20(10)/10*0/,I21(10),I22(11)                          
      LOGICAL*4  L20(5),L21(10)                                         
      REAL*8     Q20(10,10)/100*0/,Q21(10,10)                           
      DATA       I21/1,2,3,4,5,6,7,8,9,10/,I20S/0/,L20/5*.TRUE./,       
     1           I21S/5/                                                
      DATA       Q21/50*5.0,50*6.5/,I22S/0/,L21/5*.TRUE.,5*.FALSE./,    
     1           I22/11*5/                                              

      WRITE(6,*) '----- TEST NO.1 -----'                                
      DO 100 I=1,N1                                                     
        DO 10 J=1,N2                                                    
          I10(J+1) = I10(J)                                             
          I11(J) = I10(J)/I12(J,I)                                      
   10   CONTINUE                                                        
        I13(1,1) = I13(1,1) + I14(I,I)                                  
        IF (L10(I)) THEN                                                
          L10(I) = L10(I) .AND. L11(I)                                  
        ELSE                                                            
          L10(I) = L10(I) .OR. LS10                                     
        ENDIF                                                           
        DO 11 K=2,N3                                                    
          I15(K,I) = I10S                                               
          IS10 = I15(K,I+1)                                             
   11     IF ( L12(K)) L12(K) = .NOT. L12(K-1)                          
  100 CONTINUE                                                          
      WRITE(6,*) 'I10 = ',I10                                           
      WRITE(6,*) 'I11 = ',I11                                           
      WRITE(6,*) 'I13 = ',I13                                           
      WRITE(6,*) 'L10 = ',L10                                           
      WRITE(6,*) 'I15 = ',I15                                           
      WRITE(6,*) 'IS10 = ',IS10                                         
      WRITE(6,*) 'L12 = ',L12                                           
      WRITE(6,*) '----- TEST NO.2 -----'                                
      DO 200 I=2,N1                                                     
        I20(I) = SQRT( FLOAT(I21(I)+I))                                 
        I20S = I20(I) + I21(I) + I20S                                   
        IF ( L20(5) ) THEN                                              
          I21S = MAX0(I21S,I20(I))                                      
        ENDIF                                                           
        DO 20 J=1,N2                                                    
          Q20(I,J) = Q21(I,J)                                           
          I22S = I22S + Q20(I,J)                                        
   20     I22S = I22S + I21(J)                                          
        I23S = I21(I)                                                   
        IF ( L21(I) ) THEN                                              
          I23S = I21(I) + I                                             
        ELSE                                                            
          I22(I) = I23S                                                 
        ENDIF                                                           
        I22(I-1) = I23S + MIN0(I23,I22(I))                              
  200 CONTINUE                                                          
      WRITE(6,*) 'I20  = ',I20                                          
      WRITE(6,*) 'I20S = ',I20S                                         
      WRITE(6,*) 'I21S = ',I21S                                         
      WRITE(6,*) 'Q20  = ',Q20                                          
      WRITE(6,*) 'I22S = ',I22S                                         
      WRITE(6,*) 'I22  = ',I22                                          
      STOP                                                              
      END                                                               
