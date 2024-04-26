      INTEGER*4 I04A(10),I04B(10),I,N,K                                 
      REAL*4    R04A(10)                                                
      DATA I04A/10*0/                                                   
      DATA I04B/0,0,3,4,5,6,7,0,0,0/                                    
      DATA R04A/1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0/               

      CALL SUB(I,N)                                                     
      I04A(I:N)=INT(R04A(I:N))                                          

      DO 10 K=1,10                                                      
   10   IF(I04A(K) .NE. I04B(K)) GOTO 20                                

      WRITE(6,*) 'OK'
      GOTO 30                                                           

   20 WRITE(6,*) 'NG'
      WRITE(6,*) 'R04A=',R04A                                           

   30 STOP                                                              
      END                                                               

      SUBROUTINE SUB(I,N)                                               
      INTEGER*4 I,N                                                     

      I=3                                                               
      N=7                                                               

      RETURN                                                            
      END                                                               
