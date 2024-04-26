      PROGRAM MAIN                                                   
      INTEGER*1 G(10),H(10)                                             
      WRITE(6,*) 'START'
      G=1                                                               
      WRITE(6,*) 'END'
      H=1                                                               
      WRITE(6,*) 'END'
      H=H+G                                                             
      WRITE(6,*) 'END'

      CALL SUB(H)                                                       
      STOP                                                              
      END                                                               

      SUBROUTINE SUB(H)                                                 
      INTEGER*1 H(10)                                                   
      WRITE(6,*) 'START'
      DO 10 I=1,10                                                      
   10   IF(H(I) .NE. 2) GOTO 20                                         

      WRITE(6,*) 'OK'
      GOTO 30                                                           
   20 WRITE(6,*) 'NG'

   30 END                                                               
