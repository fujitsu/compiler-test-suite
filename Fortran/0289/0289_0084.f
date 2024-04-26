      INTEGER*4,            DIMENSION(5,5) ::I4_A                       
      INTEGER*4,ALLOCATABLE,DIMENSION(:,:) ::I4_B                       
      INTEGER*4 ALC_ERR,CAL_ERR                                         
      DATA I4_A /25*1/,ALC_ERR/0/,CAL_ERR/0/                            
      ALLOCATE(I4_B(1:5,-5:-1),STAT=ALC_ERR)                            
      IF(ALC_ERR .NE. 0) THEN                                           
        WRITE(6,*) 'DYNAMIC ALLOCATION ERROR(ALLOCATABLE ARRAY)'        
        GOTO 10                                                         
      ENDIF                                                             
      I4_B=I4_A+1                                                       
      DO J=1,5                                                          
        DO I=-5,-1                                                      
          IF(I4_B(J,I) .NE. 2) CAL_ERR=1                                
        ENDDO                                                           
      ENDDO                                                             
      IF(CAL_ERR .EQ. 0) THEN                                           
        WRITE(6,*) '*** OK ***'
      ELSE                                                              
        WRITE(6,*) '*** NG ***'
      ENDIF                                                             
   10 DEALLOCATE(I4_B)                                                  
      STOP                                                              
      END                                                               
