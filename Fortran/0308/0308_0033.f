      INTEGER*4 A(10),B(10),I                                           
      DATA B/1,2,1,1,1,1,1,1,1,1/                                       

      I=COS(0.0)+1                                                      
      A=1                                                               
      A(I)=2                                                            

      DO 10 N=1,10                                                      
   10   IF(A(I) .NE. B(I)) GOTO 20                                      

      WRITE(6,*) 'OK'                               
      GOTO 30                                                           

   20 WRITE(6,*) 'NG'                               
      WRITE(6,*) 'A=',A                                                 

   30 STOP                                                              
      END                                                               
