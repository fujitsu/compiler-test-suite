      PROGRAM MAIN                                                  
      REAL       REAL_A1(10),REAL_B1(10)                               
      REAL       REAL_A2(10,10),REAL_B2(10,10)                         
C                                                                      
      DATA REAL_A1,REAL_A2/110*1.0/                                    
      DATA REAL_B1,REAL_B2/110*1.0/                                    
      I=INT(COS(0.0))                                                  
C                                                                      
   10 I=I+1                                                            
      IF (I .GE. 3) THEN                                               
      REAL_A2(1,1:)=REAL_A1*3.0                                        
      ELSE                                                             
      REAL_A2(1,:)=REAL_A1+REAL_A2(1,:)                                
      GOTO 10                                                          
      END IF                                                           
   40 REAL_A2(1,:)=REAL_A1+REAL_A2(2,:)                                
   30 REAL_A2(1,:)=REAL_A1+REAL_A2(2,:)                                
      I=I+1                                                            
      GOTO (10,20,30,40,50) I                                          
   50 REAL_A2(1,1:)=REAL_A1*3.0                                        
      DO 60 K=1,10                                                     
        REAL_A2(K,:)=REAL_A1*2                                         
   60 CONTINUE                                                         
   20 CONTINUE                                                         
C                                                                      
      J=INT(COS(0.0))                                                  
  110 J=J+1                                                            
      IF (I .GE. 3) THEN                                               
        DO 210 INC1=1,10                                               
          REAL_B2(1,INC1)=REAL_B1(INC1)*3.0                            
  210 CONTINUE                                                         
      ELSE                                                             
      DO 220 INC1=1,10                                                 
          REAL_B2(1,INC1)=REAL_B1(INC1)+REAL_B2(1,INC1)                
  220 CONTINUE                                                         
      GOTO 110                                                         
      END IF                                                           
  140 DO 230 INC1=1,10                                                 
        REAL_B2(1,INC1)=REAL_B1(INC1)+REAL_B2(2,INC1)                  
  230 CONTINUE                                                         
  130 DO 240 INC1=1,10                                                 
        REAL_B2(1,INC1)=REAL_B1(INC1)+REAL_B2(2,INC1)                  
  240 CONTINUE                                                         
      J=J+1                                                            
      GOTO (110,120,130,140,150) J                                     
  150 DO 250 INC1=1,10                                                 
        REAL_B2(1,INC1)=REAL_B1(INC1)*3.0                              
  250 CONTINUE                                                         
      DO 160 K=1,10                                                    
        DO 260 INC1=1,10                                               
          REAL_B2(K,INC1)=REAL_B1(INC1)*2                              
  260 CONTINUE                                                         
  160 CONTINUE                                                         
  120 CONTINUE                                                         
C                                                                      
C                                                                      
      DO 999 INC1=1,10                                                 
        DO 999 INC2=1,10                                               
          IF (REAL_A2(INC1,INC2) .NE. REAL_B2(INC1,INC2)) THEN         
            WRITE(6,*) '*** NG  (REAL) ***'                   
            WRITE(6,*) 'REAL_A2(',REAL_A2,')'                          
            WRITE(6,*) '"RIGHT" ',REAL_B2                              
            GOTO 998                                                   
          END IF                                                       
  999 CONTINUE                                                         
      WRITE (6,*) '*** OK ***'                            
  998 CONTINUE                                                         
      STOP                                                             
      END                                                              
