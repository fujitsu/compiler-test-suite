      PROGRAM MAIN                                                   
      REAL*4     RV01(-9:10),RV02(10)                                   
      REAL*8     QS01/5.5/                                              
      INTEGER*4  LV01(10)                                               
      COMMON     //RV01,LV01                                            
      CALL  INIT(1)                                                     
      DO 10 I=1,10                                                      
        RV02(I)=I                                                       
        RV02(I)=I+RV02(I)                                               
  10    IF(I.NE.5)  RV01(LV01(I))=(RV02(I)/2.0+10.0)**3.0               
       CALL  INIT(2)                                                    
       WRITE(6,*) RV02                                                  
      DO 20 I=1,10                                                      
  20    IF((0.LT.LV01(I)).AND.(LV01(I).LE.10))                          
     &      RV01(LV01(I))=SQRT(I/4.*I)*3 + QS01                         
      CALL  INIT(3)                                                     
      DO 30 I=1,10                                                      
  30    IF (LV01(I).LT.11) RV01(LV01(I))=LV01(I)/2.*3                   
      CALL INIT(4)                                                      
      DO 40 I=1,10                                                      
        RS=I*3.                                                         
        QS01=RS                                                         
        IF (I.NE.10) RV01(LV01(I)+1)=RV01(LV01(I)+1)*QS01               
        QS01=QS01-1                                                     
  40    IF (I.EQ.10) RV01(LV01(I)-9)=-RV01(LV01(I)-9)-RS+QS01           
      CALL  INIT(5)                                                     
      STOP                                                              
      END                                                               
      SUBROUTINE  INIT(N)                                               
      COMMON  //RV01,LV01                                               
      EQUIVALENCE  (RV01(1),LV02),(LV02(11),LV01)                       
      INTEGER*4  LV01(10),LV02(11)                                      
      REAL*4     RV01(-9:10)                                            
      IF (N.NE.1) THEN                                                  
        WRITE(6,*)  'RV01= ',RV01                                       
        WRITE(6,*)  'LV01= ',LV01                                       
      END IF                                                            
      IF (N.EQ.1) THEN                                                  
        DO 10 I=1,10                                                    
          LV01(I)=11-I                                                  
          RV01(I-10)=0                                                  
  10      RV01(I)=0.                                                    
        LV02(6)=16                                                      
      END IF                                                            
      IF (N.EQ.2) THEN                                                  
        DO 20 I=1,10                                                    
          LV01(I)=(I-2)*2                                               
  20      RV01(I)=0.                                                    
      END IF                                                            
      IF (N.EQ.3) THEN                                                  
        DO 30 I=1,10                                                    
          LV01(I)= I*2                                                  
  30      RV01(I)= I-3                                                  
      END IF                                                            
      IF (N.EQ.4) THEN                                                  
        DO 40 I=1,10                                                    
          LV01(I)= I                                                    
  40      RV01(I)= I                                                    
      END IF                                                            
      RETURN                                                            
      END                                                               







