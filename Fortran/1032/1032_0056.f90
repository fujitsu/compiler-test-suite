      SUBROUTINE VD656U (AFF, AFH, MUKI, GG, QQ, HNG)
      IMPLICIT    REAL*8    (A-H,O-Z)   
      PI=3.14159265358979D0
      Q90=PI/2.0    
      AA=DABS(DSIN(QQ))  
      IF (MUKI.EQ.0)  GO TO 200
      X1=AFH/2.0/DSIN(QQ)                           
      X2=0.0                                         
      IF (AA.LT.0.99999D0)             X2=GG/DTAN(QQ) 
      X3=20.0/DSIN(QQ)                      
      HNG=X1+X2+X3                           
      GO TO 9000                              
  200 CONTINUE
      HNG=(AFH/2.0+20.0)/DSIN(QQ) 
      IF (QQ.LE.Q90)GO TO 9000 
      X1=0.0
      X3=0.0 
      X2=20.0/DSIN(QQ)  
      X4=AFH/2.0/DSIN(QQ)
      IF (AA.LT.0.99999D0) X1=AFF/DTAN(QQ)
      IF (AA.LT.0.99999D0) X3=GG/DTAN(QQ)
      HNG=-X1+X2-X3+X4                        
 9000 CONTINUE
      RETURN
      END
      print *,'pass'
      end
