      DATA N10/10/                                                      
      INTEGER*4  I10(10)/1,2,1,4,0,1,2,1,1,1/ ,                         
     1           I10S/0/,I11(10)/10*0/, I11S/0/ ,I12S/1/,               
     2           I12(10)/1,2,3,-4,5,-6,4,3,2,1/                         
      REAL*4     R10S/0/ , R10(10)/1,2,3,4,5,4,3,-5,2,10/,R11S/0/,      
     1           R11(10)/12,23,24,35,46,57,78,78,99,100/                
      REAL*8    D10S/0/,D10(10)/-1,-2,-3,-4,-5,1,2,3,4,5/,D11(10)/10*0/ 
      COMPLEX*8  C10S/(0,0)/, C10(10)/3*(1,1),2*(1,0),2*(0,1),3*(0,0)/  

      DO 100 I=1,N10                                                    
        GO TO (101,102,100) I10(I)                                      
  101   DO 10 J=1,N10                                                   
          I10S = I10S + I11(I)                                          
          IF ( D10S .GT. D10(J) ) THEN                                  
            D10S = D10(J)                                               
            I11S = J                                                    
          ELSE                                                          
            C10S = C10S - C10(J)                                        
          ENDIF                                                         
          R10S = AMAX1(R10S,R10(I))                                     
          DO 11 K=1,N10                                                 
            I12S = I12S + I12(K)                                        
            R11S = I12S + R11S                                          
   11       D11(K) = R11S                                               
          I11(I) = I10(I)*8                                             
          D10(I) = I11(I) - I                                           
          R10(I) = R11(I)/2. + R11(I)*4.                                
   10   CONTINUE                                                        
  102   WRITE(6,*) ' COUNT  I = ',I                     
  100 CONTINUE                                                          
      WRITE(6,*) ' I10S = ',I10S                                        
      WRITE(6,*) ' D10S = ',D10S,' I11S = ',I11S                        
      WRITE(6,*) ' C10S = ',C10S                                        
      WRITE(6,*) ' R10S = ',R10S                                        
      WRITE(6,*) ' D11  = ',D11                                         
      WRITE(6,*) ' I11  = ',I11                                         
      WRITE(6,*) ' D10  = ',D10                                         
      WRITE(6,*) ' R10  = ',R10                                         
      WRITE(6,*) ' I12S = ',I12S                                        
      WRITE(6,*) ' R11S = ',R11S                                        
      WRITE(6,*) ' D11  = ',D11                                         
      STOP                                                              
      END                                                               
