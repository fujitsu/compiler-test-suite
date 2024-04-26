      INTEGER*2 I02I,I02J                                               
      INTEGER*4 I04J,I04A(4,5),I04B(5,5),I04C(5,5),I04D(5,5),I04E(4,5)  
     \         ,I,J,ERROR                                               

      DATA I04B/1,1,1,1,1,2,2,2,2,2,3,3,3,3,3,4,4,4,4,4,5,5,5,5,5/      
     \    ,I04C/2,2,2,2,2,3,3,3,3,3,4,4,4,4,4,5,5,5,5,5,6,6,6,6,6/      
     \    ,I04D/3,3,3,3,3,4,4,4,4,4,5,5,5,5,5,6,6,6,6,6,7,7,7,7,7/      
     \    ,I04E,ERROR/4*6,4*9,4*12,4*15,4*18,0/                         

      I02I=INT(2.5)                                                     
      I02J=COS(0.0)+1                                                   
      I04J=4-I02J                                                       
      I04A=I04B(I02I:5,:)+I04C(I02J:5,:)+I04D(I04J:5,:)                 

      DO I=1,5                                                          
        DO J=1,4                                                        
          IF (I04A(J,I) .NE. I04E(J,I)) ERROR=ERROR+1                   
        ENDDO                                                           
      ENDDO                                                             
      IF(ERROR .EQ. 0) THEN                                             
        WRITE(6,*) 'OK'                           
      ELSE                                                              
        WRITE(6,*) 'NG'                           
      ENDIF                                                             

      STOP                                                              
      END                                                               
