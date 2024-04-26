      INTEGER*4 I04A(5),I04B(5),I,N                                     
      DATA (I04B(I),I=1,5)/5*1/                                         

      DO 10 I=1,10                                                      
       I04A=1                                                           
        DO 10 N=1,5                                                     
   10    IF(I04A(N) .NE. I04B(N)) GOTO 20                               

      WRITE(6,*) 'OK'
      GOTO 30                                                           

   20 WRITE(6,*) 'NG'
      WRITE(6,*) 'I04A=',I04A                                           

   30 STOP                                                              
      END                                                               
