      PROGRAM MAIN                                                    
      DIMENSION A(10),B(10),C(10)                                       
      REAL*8    Q(10)                                                   
      LOGICAL*4 LA(10)                                                  
      LOGICAL*1 LB(10)                                                  
      DATA LA/6*.TRUE.,4*.FALSE./                                       
      DATA LB/6*.TRUE.,4*.FALSE./                                       
      DATA A/0,1,2,2,1,0,4*0/,B/10*0./,C/1,2,3,4,5,6,7,8,9,10/          
      DATA Q/0,1,2,2,1,0,4*0/                                           

      DO 10 I=1,10                                                      
        IF ( LA(I) ) IF(A(I)-1.0) 10,20,30                              
  20      B(I) = C(I)                                                   
          GO TO 10                                                      
  30      B(I) = C(I)/2.0                                               
  10  CONTINUE                                                          
      WRITE(6,*) B                                                      

      DO 40 I=1,10                                                      
        IF ( LA(I) ) IF(A(I)-1.0) 40,50,60                              
  50      B(I) = C(I)                                                   
          GO TO 40                                                      
  60      B(I) = C(I)/2.0                                               
  40  CONTINUE                                                          
      WRITE(6,*) B                                                      
      DO 70 I=1,10                                                      
        IF ( LA(I) ) IF(A(I)-1.0) 70,80,90                              
  80      B(I) = C(I)                                                   
          GO TO 70                                                      
  90      B(I) = C(I)*2.0                                               
  70  CONTINUE                                                          
      WRITE(6,*) B                                                      
      DO 100 I=1,10                                                     
        IF ( LA(I) ) IF(A(I)-1.0) 100,110,120                           
 110      B(I) = C(I)                                                   
          GO TO 100                                                     
 120      B(I) = C(I)-2.0                                               
 100  CONTINUE                                                          
      WRITE(6,*) B                                                      

      J=5                                                               
      DO 130 I=1,10                                                     
        IF ( LA(J) ) IF(A(I)-1.0) 130,140,150                           
 140      B(I) = C(I)                                                   
          GO TO 130                                                     
 150      B(I) = C(I)+2.0                                               
 130  CONTINUE                                                          
      WRITE(6,*) B                                                      
      DO 160 I=1,10                                                     
        IF ( LA(I) ) IF(A(J)-1.0) 160,170,180                           
 170      B(I) = C(I)                                                   
          GO TO 160                                                     
 180      B(I) = C(I)*2.0                                               
 160  CONTINUE                                                          
      WRITE(6,*) B                                                      
      DO 161 I=1,10                                                     
        IF ( LA(J) ) IF(A(J)-1.0) 161,171,181                           
 171      B(I) = C(I)                                                   
          GO TO 161                                                     
 181      B(I) = C(I)*2.0                                               
 161  CONTINUE                                                          
      WRITE(6,*) B                                                      
      DO 162 I=1,10                                                     
        IF ( LA(J) ) IF(A(I)-1.0) 162,172,182                           
 172      B(I) = C(I)                                                   
          GO TO 162                                                     
 182      B(I) = C(I)*2.0                                               
 162  CONTINUE                                                          
      WRITE(6,*) B                                                      
      DO 163 I=1,10                                                     
        IF ( LA(I) ) IF(A(J)-1.0) 163,173,183                           
 173      B(I) = C(I)                                                   
          GO TO 163                                                     
 183      B(I) = C(I)*2.0                                               
 163  CONTINUE                                                          
      WRITE(6,*) B                                                      
      DO 164 I=1,10                                                     
        IF ( LA(J) ) IF(A(J)-1.0) 164,174,184                           
 174      B(I) = C(I)                                                   
          GO TO 164                                                     
 184      B(I) = C(I)*2.0                                               
 164  CONTINUE                                                          
      WRITE(6,*) B                                                      
      DO 165 I=1,10                                                     
        IF ( LB(I) ) IF(A(I)-1.0) 165,175,185                           
 175      B(I) = SIN(C(I))                                              
          GO TO 165                                                     
 185      B(I) = C(I)**2.0                                              
 165  CONTINUE                                                          
      WRITE(6,*) B                                                      
      DO 166 I=1,10                                                     
        IF ( A(I).GT.B(I) ) IF(Q(I)-1.0) 166,176,186                    
 176      B(I) = SIN(C(I))                                              
          GO TO 166                                                     
 186      B(I) = C(I)**2.0                                              
 166  CONTINUE                                                          
      WRITE(6,*) B                                                      
      STOP                                                              
      END                                                               





