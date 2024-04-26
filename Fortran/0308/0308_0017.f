      INTEGER*4   I04A(5),I04B(5,5),I04C(5,5),I04D(2,6,18,54)           

      I04A=1                                                            
      I04B=2                                                            
      I=AINT(4.5)                                                       
      I04C(1:I+1,:)=3                                                   
      I04D=4                                                            

      CALL SUB(I04A,I04B,I04C,I04D,5)                                   
      STOP                                                              
      END                                                               

      SUBROUTINE SUB(J04A,J04B,J04C,J04D,N)                             
      INTEGER*4 J04A(N),J04B(N,N),J04C(N,N),J04D(N-3,N+1,N+13,N+49)     
     .         ,J04E(5),J04F(5,5),J04G(5,5),J04H(2,6,18,54)             
     .         ,I,J,K,L,ERROR1,ERROR2,ERROR3,ERROR4                     
      DATA      J04E,J04F,J04G,J04H/5*1,25*5,25*3,11664*6/              
     .         ,ERROR1,ERROR2,ERROR3,ERROR4/4*0/                        

      J04B(1:5,1:5)=5                                                   
      J04D(1:2,1:6,1:18,1:54)=6                                         

      DO I=1,5                                                          
        IF(J04A(I)     .NE. J04E(I)  ) ERROR1=ERROR1+1                  
      ENDDO                                                             
      DO I=1,5                                                          
        DO J=1,5                                                        
          IF(J04B(J,I) .NE. J04F(J,I)) ERROR2=ERROR2+1                  
          IF(J04C(J,I) .NE. J04G(J,I)) ERROR3=ERROR3+1                  
        ENDDO                                                           
      ENDDO                                                             
      DO I=1,2                                                          
        DO J=1,6                                                        
          DO K=1,18                                                     
            DO L=1,54                                                   
              IF(J04D(I,J,K,L) .NE. J04H(I,J,K,L)) ERROR4=ERROR4+1      
            ENDDO                                                       
          ENDDO                                                         
        ENDDO                                                           
      ENDDO                                                             
      IF (ERROR1 .EQ. 0 .AND. ERROR2 .EQ. 0 .AND.                       
     .    ERROR3 .EQ. 0 .AND. ERROR4 .EQ. 0      ) THEN                 
        WRITE(6,*) 'OK'                           
      ELSE                                                              
        WRITE(6,*) 'NG'                           
      ENDIF                                                             

      RETURN                                                            
      END                                                               
