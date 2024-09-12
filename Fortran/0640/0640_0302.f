      PROGRAM MAIN                                                   
      DATA N/10/                                                        
      LOGICAL*4 LW/.FALSE./                                             

      REAL*4   R10(10)/1,5,7,1,5,7,1,5,7,5/                             
      INTEGER  I10(10)/0,1,0,1,0,1,0,1,0,1/,I11(10)/5*-1,5*1/,X/-5/     
      REAL*8   D10(10)/5*7,5*9/,D11(10)/10*5.0/                         

      INTEGER*4  I20(10)/10*0/,IV2/0/,IV3/-1/,IV4/1/,M/10/              
      REAL*4     R20(10)/10*0/,S/5/                                     
      REAL*8     D20(10)/10*0/                                          
      COMPLEX*8  C20(10)/10*(0,0)/                                      

      INTEGER*4  I40(10)/1,2,3,1,2,3,1,2,3,1/                           
      INTEGER*4  I41(10)/3,2,1,3,2,1,3,2,1,3/                           
      LOGICAL*4  L40(10)/10*0/,L41(10)/10*.TRUE./,LV1/.TRUE./           
      REAL*4     R40(10)/1,2,3,1,2,3,1,2,3,1/,RV40/2/                   
      LOGICAL*4  L42(10)/10*.FALSE./,L43(10)/10*.FALSE./                
      COMPLEX*8  C40(10)/(-1,1),(0,0),(2,2),(-3,3),(0,4),(5,-5),(6,6),  
     1                   (-1,-1),(0,0),(2,2)/                           

      REAL*8   D50(10),D51(10),D52(10),D53(10)                          
      DATA     D50/0,1,-1,0,1,-1,0,1,-1,1/,D51/1,-1,2,0,-3,4,5,6,7,8/   
      COMPLEX*8 C51(10)/5*(1,1),5*(2,2)/,C52(10),C53(10),C54(10),       
     1          C55(10),C56(10),CV54,CV55                               
      DATA     D52/1,-2,3,-4,5,-6,7,-8,9,-10/                           
      DATA     D53/1,2,-4,4,5,-7,-7,8,-10,10/                           
      DATA     C54/10*(0,0)/,C55,C56/20*(1,1)/                          

      REAL*4   R60(10)/3,6,0,12, 0,18,21, 0,27,30/,                     
     1         R61(10)/3,-3,3,-3,3,-3,3,-3,3,-3/  ,                     
     2         R62(10)/1,0,2,1,0,2,1,0,2,1/       ,                     
     3         R63(10)/1,2,3,3,2,1,1,2,3,3/,RV60/3/                     
      COMPLEX*16  CD60(10)/10*(1,1)/,CD61(10)/10*(1,2)/,                
     1            CD62(10)/10*(2,1)/,CD63(10)/10*(2,2)/                 

      C52 = 0
      C53 = 0
      WRITE(6,*) '----- LOOP 1 -----'
      DO 10 I=1,N                                                       
        IF ( R10(I) - 5.0 ) 11,11,11                                    
   11     R10(I) = MAX(I10(I),MIN(D10(I),I11(I)),R10(I))                
        IF ( LW ) GO TO 13                                              
        IF ( X + D11(I) )   12,12,12                                    
   13     I10(I) = I10(I) + R10(I)                                      
   12     I10(I) = I                                                    
   10 CONTINUE                                                          
      WRITE(6,*) R10                                                    
      WRITE(6,*) I10                                                    
      WRITE(6,*) '----- LOOP 2 -----'
      DO 20 I=1,M                                                       
        IF (S) 21,22,23                                                 
   21 I20(I) = I                                                        
   22     I20(I) = I20(I) + I                                           
   23     I20(I) = I20(I) + I                                           
        IF (IV2) 24,25,26                                               
   25     R20(I) = FLOAT(I)                                             
   24     R20(I) = R20(I) - FLOAT(I) + 1                                
   26     R20(I) = R20(I) + FLOAT(I)                                    
        IF (IV3) 27,28,29                                               
   29     D20(I) = DBLE(I)                                              
          GO TO 30                                                      
   28     D20(I) = D20(I) + DBLE(I)                                     
          GO TO 30                                                      
   27     D20(I) = D20(I) - DBLE(I)                                     
   30   IF ( LW ) GO TO 34                                              
        IF (IV4) 31,32,33                                               
   34     C20(I) = CMPLX(I)                                             
          GO TO 32                                                      
   33     C20(I) = C20(I) + CMPLX(I)                                    
          GO TO 35                                                      
   32     C20(I) = C20(I) + CMPLX(I)                                    
          GO TO 31                                                      
   31     C20(I) = C20(I) - CMPLX(I)                                    
   35   CONTINUE                                                        
   20 CONTINUE                                                          
      WRITE(6,*) I20                                                    
      WRITE(6,*) R20                                                    
      WRITE(6,*) D20                                                    
      WRITE(6,*) C20                                                    
      WRITE(6,*) '----- LOOP 3 -----'
      DO 40 I=1,N                                                       
        IF ( I40(I) - I41(I) ) 41,41,42                                 
   41     L40(I) = L41(I) .AND. LV1                                     
          GO TO 43                                                      
   42     L40(I) = L41(I) .OR.  L40(I)                                  
   43   IF ( R40(I) - RV40 )  44,44,45                                  
   45     L41(I) = .NOT.L40(I)                                          
   44     L42(I) = L41(I) .EQV.L40(I)                                   
        IF ( LW ) GO TO 48                                              
        IF ( REAL(C40(I))) 46,46,47                                     
   48     L43(I) = L41(I).AND.L42(I)                                    
          GO TO 40                                                      
   46     L43(I) = L41(I).NEQV.L42(I)                                   
          GO TO 40                                                      
   47     L43(I) = .NOT.L40(I).OR..NOT.L41(I)                           
   40 CONTINUE                                                          
      WRITE(6,*) L40                                                    
      WRITE(6,*) L41                                                    
      WRITE(6,*) L42                                                    
      WRITE(6,*) L43                                                    
      WRITE(6,*) '----- LOOP 4 -----'
      DO 50 I=1,N                                                       
        IF ( D50(I)*D51(I)) 51,52,52                                    
   51     C52(I) = C51(I) + (1.0,2.0)                                   
          GO TO 53                                                      
   52     C52(I) = C52(I) + (2.0,1.0)                                   
   53   IF ( D50(I)-D51(I)) 54,55,55                                    
   55     C53(I) = C52(I)/(2.0,2.0)                                     
          GO TO 56                                                      
   54     C53(I) = (4.0,4.0)*C53(I)                                     
   56   CV54 = C53(I)                                                   
        CV55 = C52(I)                                                   
        IF ( LW ) GO TO 59                                              
        IF ( D52(I)+D53(I)) 57,50,50                                    
   59     CV54 = C53(I)                                                 
          C54(I) = CV54 + C52(I)                                        
          GO TO 50                                                      
   57     CV55 = C52(I)                                                 
          C55(I) = CV55 * C54(I)                                        
          GO TO 50                                                      
   50     C56(I) = CV54 + CV55 +C56(I)                                  
      WRITE(6,*) C52                                                    
      WRITE(6,*) C53                                                    
      WRITE(6,*) C54                                                    
      WRITE(6,*) C55                                                    
      WRITE(6,*) C56                                                    
      WRITE(6,*) '----- LOOP 5 -----'
      DO 60 I=1,M                                                       
        IF ( R60(I)/ R61(I)) 61,62,61                                   
   61     CD60(I) = DCMPLX(I)                                           
          GO TO 63                                                      
   62     CD60(I) = CD60(I) + DCMPLX(I)                                 
   63   IF ( R62(I)-   1.0   ) 64,65,64                                 
   65     CD62(I) = CD60(I)*CD61(I)                                     
          GO TO 66                                                      
   64     CD62(I) = CD60(I)/(1.0,2.0)                                   
   66   IF ( LW ) GO TO 69                                              
        IF (  RV60 -  R63(I)   ) 60,68,60                               
   69     CD63(I) = CD62(I) + (2.0,2.0)                                 
          GO TO 60                                                      
   68     CD63(I) = (2.0,1.0) - CD63(I)                                 
          GO TO 60                                                      
   60     CD63(I) = CD60(I) + CD63(I) + (1.0,1.0)                       
      WRITE(6,*) CD60                                                   
      WRITE(6,*) CD62                                                   
      WRITE(6,*) CD63                                                   
      STOP                                                              
      END                                                               
