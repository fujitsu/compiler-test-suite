      PROGRAM MAIN                                                    
      REAL*8 A(10),B(10),C(10),S1,S2,S3                                 
      LOGICAL*4 M(10)/10*.TRUE./                                        
      DATA A/1,2,3,4,5,6,7,8,9,10/                                      
      DATA B/1,-2,4,4,-5,-6,10,2,15,2/                                  
      DATA C/10*0.0/,S2/5/                                              

      DO 10 I=1,10                                                      
        IF(M(I)) THEN                                                   
          S1 = A(I)                                                     
          S1 = DMAX1(B(I),S1)                                           
          C(I) = S1                                                     
        ENDIF                                                           
  10  CONTINUE                                                          
      WRITE(6,*) C                                                      
      DO 20 I=1,10                                                      
        IF(M(I)) THEN                                                   
          S1 = A(I)                                                     
          S1 = DMAX1(S1,B(I))                                           
          C(I) = S1                                                     
        ENDIF                                                           
  20  CONTINUE                                                          
      WRITE(6,*) C                                                      
      DO 30 I=1,10                                                      
        IF(M(I)) THEN                                                   
          S1 = A(I)                                                     
          S1 = DMIN1(B(I),S1)                                           
          C(I) = S1                                                     
        ENDIF                                                           
  30  CONTINUE                                                          
      WRITE(6,*) C                                                      
      DO 40 I=1,10                                                      
        IF(M(I)) THEN                                                   
          S1 = A(I)                                                     
          S1 = DMIN1(S1,B(I))                                           
          C(I) = S1                                                     
        ENDIF                                                           
  40  CONTINUE                                                          
      WRITE(6,*) C                                                      
      DO 50 I=1,10                                                      
        IF(M(I)) THEN                                                   
          S1 = A(I)                                                     
          S1 = DMAX1(S1,S1)                                             
          C(I) = S1                                                     
        ENDIF                                                           
  50  CONTINUE                                                          
      WRITE(6,*) C                                                      
      DO 60 I=1,10                                                      
        IF(M(I)) THEN                                                   
          S1 = A(I)                                                     
          S1 = DMIN1(S1,S1)                                             
          C(I) = S1                                                     
        ENDIF                                                           
  60  CONTINUE                                                          
      WRITE(6,*) C                                                      
      DO 70 I=1,10                                                      
        IF(M(I)) THEN                                                   
          S1 = A(I)                                                     
          S1 = DMAX1(S1,S2)                                             
          C(I) = S1                                                     
        ENDIF                                                           
  70  CONTINUE                                                          
      WRITE(6,*) C                                                      
      DO 80 I=1,10                                                      
        IF(M(I)) THEN                                                   
          S1 = A(I)                                                     
          S1 = DMAX1(S2,S1)                                             
          C(I) = S1                                                     
        ENDIF                                                           
  80  CONTINUE                                                          
      WRITE(6,*) C                                                      
      DO 90 I=1,10                                                      
        IF(M(I)) THEN                                                   
          S1 = A(I)                                                     
          S1 = DMIN1(S1,S2)                                             
          C(I) = S1                                                     
        ENDIF                                                           
  90  CONTINUE                                                          
      WRITE(6,*) C                                                      
      DO 100 I=1,10                                                     
        IF(M(I)) THEN                                                   
          S1 = A(I)                                                     
          S1 = DMIN1(S2,S1)                                             
          C(I) = S1                                                     
        ENDIF                                                           
 100  CONTINUE                                                          
      WRITE(6,*) C                                                      
      DO 110 I=1,10                                                     
        IF(M(I)) THEN                                                   
          S3 = A(I)                                                     
          S1 = DMIN1(S3,S3)                                             
          C(I) = S1                                                     
        ENDIF                                                           
 110  CONTINUE                                                          
      WRITE(6,*) C                                                      
      DO 120 I=1,10                                                     
        IF(M(I)) THEN                                                   
          S1 = A(I)                                                     
          S1 = DMIN1(S1,S1)                                             
          C(I) = S1                                                     
        ENDIF                                                           
 120  CONTINUE                                                          
      WRITE(6,*) C                                                      
      DO 130 I=1,10                                                     
        IF(M(I)) THEN                                                   
          S1 = A(I)                                                     
          S1 = DMAX1(B(I),S1,S1)                                        
          C(I) = S1                                                     
        ENDIF                                                           
 130  CONTINUE                                                          
      WRITE(6,*) C                                                      
      DO 200 I=1,10                                                     
        IF(M(I)) THEN                                                   
          S1 = A(I)                                                     
          S1 = DMAX1(S1,B(I),S1)                                        
          C(I) = S1                                                     
        ENDIF                                                           
 200  CONTINUE                                                          
      WRITE(6,*) C                                                      
      DO 300 I=1,10                                                     
        IF(M(I)) THEN                                                   
          S1 = A(I)                                                     
          S1 = DMIN1(B(I),S1,S1)                                        
          C(I) = S1                                                     
        ENDIF                                                           
 300  CONTINUE                                                          
      WRITE(6,*) C                                                      
      DO 400 I=1,10                                                     
        IF(M(I)) THEN                                                   
          S1 = A(I)                                                     
          S1 = DMIN1(S1,B(I),S1)                                        
          C(I) = S1                                                     
        ENDIF                                                           
 400  CONTINUE                                                          
      WRITE(6,*) C                                                      
      DO 500 I=1,10                                                     
        IF(M(I)) THEN                                                   
          S1 = A(I)                                                     
          S1 = DMAX1(S1,S1,S1)                                          
          C(I) = S1                                                     
        ENDIF                                                           
 500  CONTINUE                                                          
      WRITE(6,*) C                                                      
      DO 600 I=1,10                                                     
        IF(M(I)) THEN                                                   
          S1 = A(I)                                                     
          S1 = DMIN1(S1,S1,S1)                                          
          C(I) = S1                                                     
        ENDIF                                                           
 600  CONTINUE                                                          
      WRITE(6,*) C                                                      
      DO 700 I=1,10                                                     
        IF(M(I)) THEN                                                   
          S1 = A(I)                                                     
          S1 = DMAX1(S1,S2,S1)                                          
          C(I) = S1                                                     
        ENDIF                                                           
 700  CONTINUE                                                          
      WRITE(6,*) C                                                      
      DO 800 I=1,10                                                     
        IF(M(I)) THEN                                                   
          S1 = A(I)                                                     
          S1 = DMAX1(S2,S1,S1)                                          
          C(I) = S1                                                     
        ENDIF                                                           
 800  CONTINUE                                                          
      WRITE(6,*) C                                                      
      DO 900 I=1,10                                                     
        IF(M(I)) THEN                                                   
          S1 = A(I)                                                     
          S1 = DMIN1(S1,S2,S1)                                          
          C(I) = S1                                                     
        ENDIF                                                           
 900  CONTINUE                                                          
      WRITE(6,*) C                                                      
      DO 1000 I=1,10                                                    
        IF(M(I)) THEN                                                   
          S1 = A(I)                                                     
          S1 = DMIN1(S2,S1,S1)                                          
          C(I) = S1                                                     
        ENDIF                                                           
1000  CONTINUE                                                          
      WRITE(6,*) C                                                      
      DO 1100 I=1,10                                                    
        IF(M(I)) THEN                                                   
          S3 = A(I)                                                     
          S1 = DMIN1(S3,S3,S3)                                          
          C(I) = S1                                                     
        ENDIF                                                           
1100  CONTINUE                                                          
      WRITE(6,*) C                                                      
      DO 1200 I=1,10                                                    
        IF(M(I)) THEN                                                   
          S1 = A(I)                                                     
          S1 = DMIN1(S1,S1,S1)                                          
          C(I) = S1                                                     
        ENDIF                                                           
1200  CONTINUE                                                          
      WRITE(6,*) C                                                      
      STOP                                                              
      END                                                               
