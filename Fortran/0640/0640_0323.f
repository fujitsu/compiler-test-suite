      DATA N1/1/,N10/10/                                                
      REAL*4     R10(10,2),R11(10,2),R12(10,2)                          
      REAL*8     D10(10,2),D11(10,2)                                    
      COMPLEX*8  C10(10,2),C11(10,2)                                    
      INTEGER*4  I10(10)                                                
      REAL*8     Q10(10,2),Q10S                                         
      LOGICAL*1  LB                                                     
      COMPLEX*16 CQ10(10,2)                                             
      DATA  R10/20*0/, R11/4*25,4*36,4*144,4*9,4*100/,                  
     1      R12/10*1, 5*0,5*0.333/ ,D10/10*1,10*2/,D11/5*1,5*2,5*1,5*3/,
     2      C10/20*(0,0)/,C11/5*(1,1),5*(0,1),5*(1,0),5*(0,0)/,         
     3      I10/1,2,3,1,2,3,0,1,2,3/,I10S/2/, Q10/20*0/,Q10S/0/,        
     4      CQ10/5*1,5*5,3*8,2*2,5*7/ ,LB/.FALSE./                      

      DO 100 J=1,N1                                                     
        DO 10 I=2,N10                                                   
          R10(I,J) = SQRT(R11(I,J)) + SIN(R12(I,J))                     
          D10(I,J) = D10(I,J)**D11(I,J) + DBLE(R10(I,J))                
          C10(I,J) = CABS(C11(I,J)) + CMPLX(D10(I,J))                   
          I10(I) = I10(I)*I10S + INT(C10(I,J))                          
          Q10(I,J) = DBLE(R10(I,J)) + D10(I,J)                   
     1             - DBLE(C10(I,J)) - DREAL(CQ10(I,J))                  
          Q10S = Q10(I,J) +  I10(J)                                     
          CALL SUB1(Q10,Q10S)                                           
          WRITE(6,*) ' Q10S = '                                         
          WRITE(6,10000) Q10S                                           
10000     FORMAT(F15.5/)                                                
          LB = Q10S .GE. Q10(I,J)                                       
          IF ( LB ) CQ10(I,J) = CMPLX(I10(I))                           
          R10(I,J) = R10(I,J) + REAL(I10(I)) + SNGL(D10(I,J))           
          C10(I,J) = Q10(I,J) + C10(I,J) + CMPLX(I10(I))                
          D10(I,J) = D10(I,J)**D11(I,J) + CABS(C11(I,J))+CMPLX(D10(I,J))
          I10(I-1) = INT(C10(I,J)) + Q10S                               
   10   CONTINUE                                                        
  100 CONTINUE                                                          
      WRITE(6,*) ' R10  = '                                             
      WRITE(6,10001) R10                                                
10001 FORMAT(7F10.3/)                                                   
      WRITE(6,*) ' D10  = '                                             
      WRITE(6,10001) D10                                                
      WRITE(6,*) ' C10  = '                                             
      WRITE(6,10001) C10                                                
      WRITE(6,*) ' I10  = ',I10                                         
      WRITE(6,*) ' Q10  = '                                             
      WRITE(6,10001) Q10                                                
      WRITE(6,*) ' Q10S = '                                             
      WRITE(6,10001) Q10S                                               
      WRITE(6,*) ' CQ10 = '                                             
      WRITE(6,10001) CQ10                                               
      STOP                                                              
      END                                                               
      SUBROUTINE SUB1(Q10,Q10S)                                         
      REAL*8   Q10(10,2) ,Q10S                                          
      Q10S = Q10S + Q10(5,1)                                            
      RETURN                                                            
      END                                                               
