      INTEGER*1 CNT_10,S_2                                              
      PARAMETER (CNT_10=10)                                             
      INTEGER,DIMENSION(CNT_10)::I01_A/10*0/,I02_A/10*0/                
     +                          ,I04_A/10*0/,I08_A/10*0/                
      CHARACTER(LEN=2) RESULT/'OK'/                                     
      S_2=AINT(2.5)                                                     
      I01_A(:)          =1                                              
      I02_A(CNT_10:1:-1)=S_2                                            
      I04_A            =I02_A(S_2)                                      
      I08_A(::2)       =I04_A(CNT_10:1:-2)                              
      DO I=1,CNT_10,2                                                   
        IF(I01_A(I) .NE. 1 .OR. I01_A(I+1) .NE. 1 .OR.                  
     +     I02_A(I) .NE. 2 .OR. I02_A(I+1) .NE. 2 .OR.                  
     +     I04_A(I) .NE. 2 .OR. I04_A(I+1) .NE. 2 .OR.                  
     +     I08_A(I) .NE. 2 .OR. I08_A(I+1) .NE. 0    ) RESULT='NG'      
      ENDDO                                                             
      WRITE(6,*) '*** PROGRAM IS ',RESULT,' ***'                        
      STOP                                                              
      END                                                               
