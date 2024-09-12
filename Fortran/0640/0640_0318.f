      INTEGER*4  I10(5,5),I11(5,5),I12(5,5),I13(5,5),I14(5,5),I15(5,5), 
     1           I16(5,5)                                               
      DATA  I10/25*0/,I11/5*1,5*2,5*3,5*2,5*1/,I12/10*1,10*2,5*3/,      
     1      I13/3*1,3*-1,5*5,4*-3,10*2/,I14/25*0/,I15/15*1,10*2/,       
     2      I16/25*0/,I10S/0/ ,N11,N21,N31,N41/4*5/                     

      REAL*4  R10(10),R11(10),R12(10,10)                                
      DATA    R11S/1/,R10/10*0/,R11/1,2,3,4,5,6,7,8,9,10/,R12/100*0/,   
     1        N1,N2,N3,N4/4*10/                                         

      WRITE(6,*) '----- TEST NO.1 -----'                                
      DO 100 I=1,N11                                                    
        DO 10 J=1,N21                                                   
          IF ( J.NE.1 .OR. J.NE. N2 ) THEN                              
            I10(I,J) = I10(I,J) + I11(I,J)*I12(I,J)                     
          ENDIF                                                         
   10   CONTINUE                                                        
        DO 20 K=1,N31                                                   
   22     IF ( I13(K,I) .LT. 0 ) GO TO 21                               
            I14(K,K) = I13(K,I)                                         
            GO TO 20                                                    
   21       I13(K,I) = I15(K,I)                                         
            GO TO 22                                                    
   20   CONTINUE                                                        
        DO 30 L=1,N41                                                   
          I16(L,I) = I10(L,L) + I11(L,L)                                
          I10S = I10S + I16(L,I)                                        
   30   CONTINUE                                                        
  100 CONTINUE                                                          
      WRITE(6,*) 'I10 = ',I10                                           
      WRITE(6,*) 'I14 = ',I14                                           
      WRITE(6,*) 'I13 = ',I13                                           
      WRITE(6,*) 'I16 = ',I16                                           
      WRITE(6,*) 'I10S = ',I10S                                         
      WRITE(6,*) '----- TEST NO.2 -----'                                
      DO 200 I=1,N1                                                     
        DO 40 J=1,N2                                                    
          R10S = J                                                      
   40     R11S = R11S  +R10S                                            
        DO 50 K=1,N3                                                    
          ASSIGN 51 TO I11S                                             
          GO TO I11S ,(51,50)                                           
   51     R10(K) = R10(K) + R11(K)                                      
   50   CONTINUE                                                        
        DO 60 L=1,N4                                                    
          R12(L,I) = R10(L)                                             
   60     CALL SUB1(R12,L)                                              
  200 CONTINUE                                                          
      WRITE(6,*) ' R11S = ',R11S                                        
      WRITE(6,*) ' R10  = ',R10                                         
      WRITE(6,*) ' R12  = ',R12                                         
      STOP                                                              
      END                                                               
      SUBROUTINE SUB1(R12,L)                                            
      REAL*4 R12(10,10),R13(10,10)                                      
      DATA R13/50*1.,50*2./                                             
      DO 10 I=1,L                                                       
        R12(I,I) = R12(I,I) + R13(I,I)                                  
   10 CONTINUE                                                          
      RETURN                                                            
      END                                                               
