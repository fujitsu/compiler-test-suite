      PROGRAM MAIN                                                   
      DATA  N/10/                                                       
      LOGICAL*4  L10(10),L11(10),L12(10),L13(10),LV10                   
      INTEGER*4  I10(10),I11(10),I12(10)                                
      REAL*4     R10(10),R11(10),R12(10)                                
      REAL*8     D10(10),DV10                                           
      COMPLEX*8  C10(10),C11(10),C12(10),C13(10),C14(10)                
      DATA  L10/6*.FALSE.,.TRUE.,3*.FALSE./,L/5/,                       
     1      I10/1,2,3,4,5,6,7,8,9,10/,M/7/,IV10/7/,R10/10*8/,R11/10*6/, 
     2      C10/10*(1,1)/,DV10/0/,                                      
     3      L11/.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,   
     4          .TRUE.,.FALSE.,.TRUE./                                  
     5      L13/2*.FALSE.,2*.TRUE.,2*.FALSE.,2*.TRUE.,2*.FALSE./,       
     7      I11/10*0/,I12/1,4,9,9,4,1,1,4,9,4/,                         
     8      C11/(1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),  
     9          (10,10)/,C12/(1,1),(1,1),(3,3),(3,3),(5,5),(5,5),(7,7), 
     A          (7,7),(9,9),(9,9)/,L12/10*.FALSE./,                     
     B      LV10/.TRUE./,C13/10*(2,2)/,C14/10*(1,2)/,R11V/0/,           
     C      R12/1,2,3,4,5,6,7,8,9,10/,D10/10*0/,J/5/                    
                                                                        
      DO 10 I=1,N                                                       
        IF ( .NOT.L10(M) ) GO TO 11                                     
          IF ( I10(M) .LE. IV10 ) GO TO 12                              
            GO TO 10                                                    
   11     IF ( R10(M) .GT. R11(L) ) GO TO 12                            
            GO TO 15                                                    

   12       CONTINUE                                                    
            C10(I) = I                                                  
            DV10 = DV10 + DBLE(C10(I))                                  
            IF ( L11(I) ) GO TO 13                                      

            I11(I) = INT(SQRT(FLOAT(I12(I)))) ** I                      
            IF ( C11(I) .EQ. C12(I) ) GO TO 14                          
              GO TO 10                                                  

   13         CONTINUE                                                  
              L12(I) = .NOT.L13(I) .AND. LV10                           
              C13(I) = C13(I)/C10(I)                                    
              IF ( C14(L) .NE. (1.0,1.0) ) GO TO 14                     
                GO TO 10                                                

   14           CONTINUE                                                
                R10V = I                                                
                R11V = R11V +(R12(I) + R10V)                            

   15           CONTINUE                                                
                D10(J) = D10(J) + I                                     
   10 CONTINUE                                                          
      WRITE(6,*) 'C10  = ',C10                                          
      WRITE(6,*) 'DV10 = ',DV10                                         
      WRITE(6,*) 'I11  = ',I11                                          
      WRITE(6,*) 'L12  = ',L12                                          
      WRITE(6,*) 'C13  = ',C13                                          
      WRITE(6,*) 'R11V = ',R11V                                         
      WRITE(6,*) 'D10  = ',D10                                          
      STOP                                                              
      END                                                               
