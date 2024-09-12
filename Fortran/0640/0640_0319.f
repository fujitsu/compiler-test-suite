      DATA N10/10/,N5/5/,N2/2/                                          
      CHARACTER*4 CH10(10)                                              
      INTEGER*4  I10(10),I11(10)                                        
      REAL*4     R10(10),R11(10)                                        
      REAL*8     RD10(10,2) ,RD11(2,10),RD10S                           
      COMPLEX*8  C10(6,2),C11(6,2)                                      
      COMPLEX*16 CD10(-1:5,2)                                           
      DATA  CH10/5*'TEST',5*'ESTE'/,I10/10*0/,I11/5*1,5*2/,I10S/3/      
      DATA  C10/6*(1,1),6*(1,2)/,C11/6*(1,1),6*(2,1)/                   
      DATA  R11S/1.0/,R10/5*1,5*2/,R11/10*0/                            
      DATA  RD10/5*1.5,5*2.5,5*3.5,5*4.5/,RD11/13*1.5,6*0.5,2.5/        
      DATA  CD10/7*(0.5,0.5),7*(1.5,1.5)/                               
      DATA  J/1/,N/2/,N1/5/                                             

      INTEGER*4  I20(10),I21(10,2),I22(10,2),I23(10,2)                  
      REAL*4     R20(5,2)                                               

      NAMELIST /OUT/I21                                                 
      DATA  R20/1,2,3,4,5,6,7,8,9,10/,I20/1,2,3,4,5,1,2,3,4,5/,         
     1      I20S/0/,I21/10*4,10*8/,I23/5*1,5*2,5*3,5*4/                 

      INTEGER*4  I30(10),I31(10),I32(2),I33(2)                          
      REAL*4     R30(10,2),R31(10,2),R32(2,10)                          
      REAL*8     RD30S,RD30(10,2),RD31(2)                               
      REAL*8     Q30(10)                                                
      DATA  I30/10*0/,R30/20*0/,R31/5*1,5*0,5*2,5*3/,R32/20*0/,         
     1      RD30/20*0/,Q30/0,1,2,3,4,5,6,7,8,9/,I31/5*1,5*2/,           
     2      I32/2*0/,I33/2*1/,RD31/0,0/,I30S/2/ ,RD30S/3/               

      WRITE(6,*) '----- TEST NO.1 -----'                                
 1000 CONTINUE                                                          
        DO 100 I=2,N1                                                   
          IF (CH10(I).EQ.'TEST') GOTO 100                               
            I10(I) = I11(I)*I10S                                        
  100   CONTINUE                                                        
        DO 200 I=1,N1                                                   
  200     IF (C10(I,J).EQ.C11(I,J)) C10(I,J)=C10(I,J)/C11(I,J)          
        DO 300 I=2,N1                                                   
          R10S = R11S                                                   
          R11S = R10(I)                                                 
  300     R11(I) = R11(I-1) + R11S                                      
        DO 400 I=2,N1                                                   
          RD10S = RD10(I,J) + RD11(J,I)                                 
  400     CD10(I,J) = RD10S + CD10(I-1,J)                               
      J = J + 1                                                         
      IF ( J.LE.N) GO TO 1000                                           
      WRITE(6,*) 'I10  = ',I10                                          
      WRITE(6,*) 'C10  = ',C10                                          
      WRITE(6,*) 'R11S = ',R11S                                         
      WRITE(6,*) 'R11  = ',R11                                          
      WRITE(6,*) 'CD10 = ',CD10                                         

      WRITE(6,*) '----- TEST NO.2 -----'                                
      DO 2000 I=1,N2                                                    
        DO 500 J=1,N5                                                   
  500     IF (R20(J,I).LE.0) STOP                                       
        DO 510 K=1,N10                                                  
  510     I20S = I20S + I20(K)                                          
        DO 520 L=1,N10                                                  
          I21S = I21(L,I)                                               
  520     WRITE(6,OUT)                                                  
        DO 530 M=1,N10                                                  
          I22(M,I) = I21(M,I) / 4                                       
  530     I23(M,I) = I22(M,I) + I23(M,I)                                
 2000 CONTINUE                                                          
      WRITE(6,*) ' I20S = ',I20S                                        
      WRITE(6,*) ' I22  = ',I22                                         
      WRITE(6,*) ' I23  = ',I23                                         

      WRITE(6,*) '----- TEST NO.3 -----'                                
      DO 3000 I=1,N2                                                    
        DO 600 J=1,N10                                                  
          GO TO ( 601,602,600 ) I30S                                    
  601     I30(J) = J                                                    
  602     I30(J) = I30(J) + J                                           
  600   CONTINUE                                                        
        DO 610  K=1,N10                                                 
          R30(K,I) = SIN(R31(K,I))                                      
          R30S = R31(K,I)                                               
  610     R32(I,K) = COS(R30S)                                          
        DO 620  L=1,N10                                                 
          RD30(L,I) = RD30S                                             
          RD30S = RD30(L,I) + RD30S                                     
          I30(L) = I30(L) + RD30S                                       
  620   CONTINUE                                                        
        DO 630 M=1,N10                                                  
  630     Q30(M) = Q30(M) + I30(M)/I31(M)                               
        I32(I) = I33(I) + R32(I,3)                                      
        RD31(I) = I32(I)                                                
        WRITE(6,*) ' LOOP'                                    
 3000 CONTINUE                                                          
      WRITE(6,*) ' I30   = ',I30                                        
      WRITE(6,*) ' R30   = '                                            
      WRITE(6,10000) R30                                                
10000 FORMAT(7F10.6/)                                                   
      WRITE(6,*) ' R32   = '                                            
      WRITE(6,10000) R32                                                
      WRITE(6,*) ' RD30  = ',RD30                                       
      WRITE(6,*) ' RD30S = ',RD30S                                      
      WRITE(6,*) ' I32   = ',I32                                        
      WRITE(6,*) ' RD31  = ',RD31                                       
      STOP                                                              
      END                                                               
