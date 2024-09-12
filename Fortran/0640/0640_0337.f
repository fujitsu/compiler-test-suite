      PROGRAM MAIN                                                   
      REAL*4     RV01(-9:10),RV02(10),RV03(10)                          
      REAL*8     QS01/5.5/                                              
      INTEGER*4  IV01(10),IV02(10),IRC1,ICODE                           
      LOGICAL*4  LV01(10)                                               
      COMMON     //RV01,RV02,LV01,IV01,IV02,RV03,IRC1,ICODE             
      CALL  INIT(1)                                                     
      DO 10 I=1,10                                                      
        RV02(I)=I                                                       
        RV02(I)=I+RV02(I)                                               
        IF(IRC1.NE.5)                         GOTO 14                   
          RV01(I-3)=RV02(I)**2                                          
          LV01(I)=RV01(I).GT.RV01(I-3)                                  
          IF (LV01(I))                        GOTO 12                   
            RV01(I)=RV01(I)/4.0                                         
            ICODE=I*100+1                                               
            RV02(I)=RV01(I)*3.5-RV01(I)+QS01                            
            IV02(I)=RV01(I)*2+4                                         
                                              GOTO 11                   
  14      ICODE=I*100+4                                                 
  11    IF((0.LT.IV02(I)).AND.(IV02(I).LE.10))                          
     &      RV03(IV02(I))=SQRT(I/4.*I)*3 + QS01                         
        IF(IRC1.NE.5)  THEN                                             
          ICODE=I*100+2                                                 
                                              GOTO 10                   
        END IF                                                          
  12      ICODE=I*100+3                                                 
  10    IV01(I)=ICODE                                                   
      CALL INIT(2)                                                      
      DO 20 I=1,10                                                      
        RV02(I)=I                                                       
        RV02(I)=I+RV02(I)                                               
        IF(IRC1.EQ.5)                         GOTO 24                   
          RV01(I-3)=RV02(I)**2                                          
          LV01(I)=RV01(I).GT.RV01(I-3)                                  
          IF (LV01(I))                        GOTO 22                   
            RV01(I)=RV01(I)/4.0                                         
            ICODE=I*100+1                                               
            RV02(I)=RV01(I)*3.5-RV01(I)+QS01                            
            IV02(I)=RV01(I)*2+4                                         
                                              GOTO 21                   
  24      ICODE=I*100+4                                                 
  21    IF((0.LT.IV02(I)).AND.(IV02(I).LE.10))                          
     &      RV03(IV02(I))=SQRT(I/4.*I)*3 + QS01                         
        IF(IRC1.NE.5)  THEN                                             
          ICODE=I*100+2                                                 
                                              GOTO 20                   
        END IF                                                          
  22      ICODE=I*100+3                                                 
  20    IV01(I)=ICODE                                                   
      CALL INIT(3)                                                      
      STOP                                                              
      END                                                               
      SUBROUTINE  INIT(N)                                               
      REAL*4     RV01(-9:10),RV02(10),RV03(10)                          
      INTEGER*4  IV01(10),IV02(10),IRC1,ICODE,N                         
      LOGICAL*4  LV01(10)                                               
      COMMON     //RV01,RV02,LV01,IV01,IV02,RV03,IRC1,ICODE             
      IF (N.NE.1) THEN                                                  
        WRITE(6,*)  'RV01= ',RV01                                       
        WRITE(6,*)  'RV02= ',RV02                                       
        WRITE(6,*)  'LV01= ',LV01                                       
        WRITE(6,*)  'IV01= ',IV01                                       
        WRITE(6,*)  'IV02= ',IV02                                       
      ELSE                                                              
        DO 1 I=-9,0                                                     
   1     RV01(I)=3.                                                     
      END IF                                                            
      DO 10 I=1,10                                                      
        LV01(I)=.TRUE.                                                  
        RV01(I)=12+I                                                    
        IV02(I)=12+I                                                    
  10    IV01(I)=0                                                       
      ICODE=0                                                           
      IRC1 =5                                                           
      RETURN                                                            
      END                                                               
