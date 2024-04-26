      PARAMETER (N=10)                                                  
      INTEGER I,J                                                       
      CHARACTER*13 CHAR1(10),CHAR2(10)                                  
      CHARACTER*26 CHAR3(10),Z(10)                                      
      DATA (CHAR1(I),I=1,N)/N*'ABCDEFGHIJKLM'/                          
      DATA (CHAR2(I),I=1,N)/N*'NOPQRSTUVWXYZ'/                          
      DATA (Z(I),I=1,10)/10*'EFFORT IS SURE TO REWARD!!'/               

      CALL SUB(CHAR1,CHAR2)                                             
      CHAR3=CHAR1//CHAR2                                                

      DO 10 J=1,N                                                       
   10   IF(CHAR3(J) .NE. Z(J)) GOTO 20                                  

      WRITE(6,*) 'OK'                                
      GOTO 30                                                           

   20 WRITE(6,*) 'NG'                                
      WRITE(6,*) 'CHAR1=',CHAR1                                         
      WRITE(6,*) 'CHAR2=',CHAR2                                         
      WRITE(6,*) 'CHAR3=',CHAR3                                         

   30 STOP                                                              
      END                                                               
      SUBROUTINE SUB(X,Y)                                               
      CHARACTER*(*) X(10),Y(10)                                         
      CHARACTER*26  Z(10)                                               
      DATA (Z(I),I=1,10)/10*'EFFORT IS SURE TO REWARD!!'/               

      X=Z(:)(1:13)                                                      
      Y=Z(:)(14:26)                                                     

      RETURN                                                            
      END                                                               
