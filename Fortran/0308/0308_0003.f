      PROGRAM MAIN                                                   
      LOGICAL*1 A(10)                                                   
      LOGICAL*4 B(10)                                                   
      CHARACTER*15 C1(10),C2(10)                                        
      COMPLEX*8 E(10)                                                   
      COMPLEX*16 H(10)                                                  

      C1='TAMA'                                                         
      C2='POCHI'                                                        

      CALL SUB(C1,C2,A,B,E,H)                                        

      DO 10 N=1,10                                                      
        IF (A(N) .NEQV. .FALSE.) GOTO 20                                
        IF (B(N) .NEQV. .FALSE.) GOTO 30                                
        IF (E(N) .NE. (2.0E+5,2.0E+5)) GOTO 40                          
        IF (H(N) .NE. (2.0D+5,2.0D+5)) GOTO 50                          
        IF (C1(N) .NE. 'PONTA & POCHI') GOTO 70                         
   10   IF (C2(N) .NE. 'POCHI') GOTO 80                                 

      WRITE(6,*) 'OK'
      GOTO 90                                                           
   20 WRITE(6,*) 'NG'
      WRITE(6,*) 'A=',A                                                 
      GOTO 90                                                           
   30 WRITE(6,*) 'NG'
      WRITE(6,*) 'B=',B                                                 
      GOTO 90                                                           
   40 WRITE(6,*) 'NG'                        
      WRITE(6,*) 'E=',E                                                 
      GOTO 90                                                           
   50 WRITE(6,*) 'NG'                        
      WRITE(6,*) 'H=',H                                                 
      GOTO 90                                                           
   70 WRITE(6,*) 'NG'
      WRITE(6,*) 'C1=',C1                                               
      GOTO 90                                                           
   80 WRITE(6,*) 'NG'
      WRITE(6,*) 'C2=',C2                                               

   90 STOP                                                              
      END                                                               

      SUBROUTINE SUB(C1,C2,A,B,E,H)                                   
      LOGICAL*1 A(10)                                                   
      LOGICAL*4 B(10)                                                   
      CHARACTER*15 C1(10),C2(10)                                        
      COMPLEX*8 E(10),F(10)                                             
      COMPLEX*16 G(10),H(10)                                            

      A=(C1 < C2)                                                       
      B=(C1 < C2)                                                       
      C1='PONTA & '//C2                                                 
      E=(1.0E+5, 1.0E+5)                                                
      F=(1.0E+5, 1.0E+5)                                                
      E=E+F                                                             
      G=(1.0D+5, 1.0D+5)                                                
      H=(1.0D+5, 1.0D+5)                                                
      H=H+G                                                             

      RETURN                                                            
      END                                                               
