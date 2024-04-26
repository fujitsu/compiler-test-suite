      INTEGER*2 I02I,I02J                                               
      INTEGER*4 I04I,I04J                                               
      PARAMETER (I02I=2,I04I=2)                                         
      INTEGER*4 I04A(I02I,I04I,2,2),I04B(2,2,2,2),I,J,K,L,ERROR         
      DATA      I04B,ERROR/16*1,0/                                      

      I02J=COS(0.0)+1                                                   
      I04J=AINT(2.5)                                                    
      I04A(:,:,1:I02J,1:I04J)=1                                         

      DO I=1,2                                                          
        DO J=1,2                                                        
          DO K=1,2                                                      
            DO L=1,2                                                    
             IF(I04A(L,K,J,I) .NE. I04B(L,K,J,I)) ERROR=ERROR+1         
            ENDDO                                                       
          ENDDO                                                         
        ENDDO                                                           
      ENDDO                                                             
      IF(ERROR .EQ.0) THEN                                              
        WRITE(6,*) 'OK'                           
      ELSE                                                              
        WRITE(6,*) 'NG'                           
      ENDIF                                                             

      STOP                                                              
      END                                                               
