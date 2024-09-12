      PROGRAM MAIN                                                   
      REAL*8     QV1(10)                                                
      REAL*8     DV1(10)                                                
      REAL*4     RV1(10),RV2(10),RS01,RS02,RS03                         
      INTEGER*4  LST(10)                                                
      COMMON     //QV1,DV1,RV1,RV2,LV1,LST,RS01,RS02,RS03               
      CALL INIT(1)                                                      
      CALL SUB1                                                         
      CALL INIT(2)                                                      
      CALL SUB2                                                         
      CALL INIT(3)                                                      
      CALL SUB3                                                         
      CALL INIT(4)                                                      
      CALL SUB4                                                         
      CALL INIT(5)                                                      
      STOP                                                              
      END                                                               
      SUBROUTINE  INIT(N)                                               
      REAL*8     QV1(10)                                                
      REAL*8     DV1(10),DV2(10)                                        
      REAL*4     RV1(10),RV2(10),RS01,RS02,RS03                         
      LOGICAL*4  LV1(10)                                                
      INTEGER*4  LST(10)                                                
      COMMON     //QV1,DV1,DV2,RV1,RV2,LV1,LST,RS01,RS02,RS03           
      IF (N.NE.1) THEN                                                  
        WRITE(6,*)  'DV1= ',DV1                                         
        WRITE(6,*)  'DV2= ',DV2                                         
        WRITE(6,*)  'RV1= ',RV1                                         
        WRITE(6,*)  'RV2= ',RV2                                         
        WRITE(6,*)  'LV1= ',LV1                                         
        WRITE(6,*)  'RS01= ',RS01                                       
        WRITE(6,*)  'RS02= ',RS02                                       
        WRITE(6,*)  'RS03= ',RS03                                       
      END IF                                                            
      DO 10 I=1,10                                                      
        LST(I)=I                                                        
        LV1(I)=.FALSE.                                                  
        RV1(I)=I-4                                                      
        RV2(I)=100                                                      
        DV1(I)=8-I                                                      
        DV2(I)=100                                                      
   10   QV1(I)=8-I                                                      
      RS02=0                                                            
      RS03=0                                                            
      RETURN                                                            
      END                                                               

      SUBROUTINE SUB1                                                   
      REAL*4     RS01,RS02,RS03                                         
      REAL*8     QV1(10)                                                
      REAL*8     DV1(10),DV2(10)                                        
      REAL*4     RV1(10),RV2(10)                                        
      LOGICAL*4  LV1(10),LS                                             
      INTEGER*4  LST(10),IS                                             
      COMMON     //QV1,DV1,DV2,RV1,RV2,LV1,LST,RS01,RS02,RS03           
      IS=9                                                              
      DO 10 I=1,10                                                      
        RS01=0                                                          
        LS= DV1(I).GE.RV1(I)                                            
                                                                        
        IF (LS) THEN                                                    
          RV2(LST(I))=DV1(I)+RV1(I)                                     
          RS02= MAX(DV1(I),RS02)                                        
          IS= 1                                                         
          LV1(LST(I))= LS.AND.RV2(I).GT.DV1(LST(I))                     
        END IF                                                          
        IF (.NOT.LS) THEN                                               
          RV2(I)=I*2.0                                                  
          LV1(I)=.NOT.LV1(I).AND.DV1(I).EQ.RV1(I)                       
          IF (LV1(I).AND..NOT.LS) THEN                                  
            LV1(LST(I))=.NOT.LV1(I).AND.QV1(I).EQ.RV1(I)                
            IS = 2                                                      
            DV1(I)=RV2(I)*4+IS                                          
          ELSE                                                          
            IS = 3                                                      
          END IF                                                        
          RV2(I)=RV2(I)*3.                                              
          RS01=QV1(I)*RV1(I)                                            
          RS03=RV2(LST(I))+RS03+REAL(DV1(I))+RV1(I)                     
          RV2(LST(I))=RV2(I)+RS01                                       
        ENDIF                                                           
        DV2(I)=RS01                                                     
  10  CONTINUE                                                          
      RETURN                                                            
      END                                                               

      SUBROUTINE SUB2                                                   
      REAL*4     RS01,RS02,RS03                                         
      REAL*8     QV1(10)                                                
      REAL*8     DV1(10),DV2(10)                                        
      REAL*4     RV1(10),RV2(10)                                        
      LOGICAL*4  LV1(10),LS                                             
      INTEGER*4  LST(10),IS                                             
      COMMON     //QV1,DV1,DV2,RV1,RV2,LV1,LST,RS01,RS02,RS03           
      IS=9                                                              
      DO 10 I=1,10                                                      
        RS01=0                                                          
        LS= DV1(I).GE.RV1(I)                                            
                                                                        
        IF (LS) THEN                                                    
          RV2(LST(I))=DV1(I)+RV1(I)                                     
          RS02= MAX(DV1(I),RS02)                                        
          IS= 1                                                         
          LV1(LST(I))= LS.AND.RV2(I).GT.DV1(LST(I))                     
        END IF                                                          
        IF (.NOT.LS) THEN                                               
          RV2(I)=I*2.0                                                  
          LV1(I)=.NOT.LV1(I).AND.DV1(I).EQ.RV1(I)                       
          IF (LV1(I).AND..NOT.LS) THEN                                  
            LV1(LST(I))=.NOT.LV1(I).AND.QV1(I).EQ.RV1(I)                
            IS = 2                                                      
            DV1(I)=RV2(I)*4+IS                                          
          ELSE                                                          
            IS = 3                                                      
          END IF                                                        
          RV2(I)=RV2(I)*3.                                              
          RS01=QV1(I)*RV1(I)                                            
          RS03=RV2(LST(I))+RS03+REAL(DV1(I))+RV1(I)                     
          RV2(LST(I))=RV2(I)+RS01                                       
        ENDIF                                                           
        DV2(I)=RS01                                                     
  10  CONTINUE                                                          
      RETURN                                                            
      END                                                               

      SUBROUTINE SUB3                                                   
      REAL*4     RS01,RS02,RS03                                         
      REAL*8     QV1(10)                                                
      REAL*8     DV1(10),DV2(10)                                        
      REAL*4     RV1(10),RV2(10)                                        
      LOGICAL*4  LV1(10),LS                                             
      INTEGER*4  LST(10),IS                                             
      COMMON     //QV1,DV1,DV2,RV1,RV2,LV1,LST,RS01,RS02,RS03           
      IS=9                                                              
      DO 10 I=1,10                                                      
        RS01=0                                                          
        LS= DV1(I).GE.RV1(I)                                            
                                                                        
        IF (LS) THEN                                                    
          RV2(LST(I))=DV1(I)+RV1(I)                                     
          RS02= MAX(DV1(I),RS02)                                        
          IS= 1                                                         
          LV1(LST(I))= LS.AND.RV2(I).GT.DV1(LST(I))                     
        END IF                                                          
        IF (.NOT.LS) THEN                                               
          RV2(I)=I*2.0                                                  
          LV1(I)=.NOT.LV1(I).AND.DV1(I).EQ.RV1(I)                       
          IF (LV1(I).AND..NOT.LS) THEN                                  
            LV1(LST(I))=.NOT.LV1(I).AND.QV1(I).EQ.RV1(I)                
            IS = 2                                                      
            DV1(I)=RV2(I)*4+IS                                          
          ELSE                                                          
            IS = 3                                                      
          END IF                                                        
          RV2(I)=RV2(I)*3.                                              
          RS01=QV1(I)*RV1(I)                                            
          RS03=RV2(LST(I))+RS03+REAL(DV1(I))+RV1(I)                     
          RV2(LST(I))=RV2(I)+RS01                                       
        ENDIF                                                           
        DV2(I)=RS01                                                     
  10  CONTINUE                                                          
      RETURN                                                            
      END                                                               

      SUBROUTINE SUB4                                                   
      REAL*4     RS01,RS02,RS03                                         
      REAL*8     QV1(10)                                                
      REAL*8     DV1(10),DV2(10)                                        
      REAL*4     RV1(10),RV2(10)                                        
      LOGICAL*4  LV1(10),LS                                             
      INTEGER*4  LST(10),IS                                             
      COMMON     //QV1,DV1,DV2,RV1,RV2,LV1,LST,RS01,RS02,RS03           
      IS=9                                                              
      DO 10 I=1,10                                                      
        RS01=0                                                          
        LS= DV1(I).GE.RV1(I)                                            
                                                                        
        IF (LS) THEN                                                    
          RV2(LST(I))=DV1(I)+RV1(I)                                     
          RS02= MAX(DV1(I),RS02)                                        
          IS= 1                                                         
          LV1(LST(I))= LS.AND.RV2(I).GT.DV1(LST(I))                     
        END IF                                                          
        IF (.NOT.LS) THEN                                               
          RV2(I)=I*2.0                                                  
          LV1(I)=.NOT.LV1(I).AND.DV1(I).EQ.RV1(I)                       
          IF (LV1(I).AND..NOT.LS) THEN                                  
            LV1(LST(I))=.NOT.LV1(I).AND.QV1(I).EQ.RV1(I)                
            IS = 2                                                      
            DV1(I)=RV2(I)*4+IS                                          
          ELSE                                                          
            IS = 3                                                      
          END IF                                                        
          RV2(I)=RV2(I)*3.                                              
          RS01=QV1(I)*RV1(I)                                            
          RS03=RV2(LST(I))+RS03+REAL(DV1(I))+RV1(I)                     
          RV2(LST(I))=RV2(I)+RS01                                       
        ENDIF                                                           
        DV2(I)=RS01                                                     
  10  CONTINUE                                                          
      RETURN                                                            
      END                                                               


