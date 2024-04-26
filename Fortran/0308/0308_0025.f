      INTEGER*4      I1,I2,I3,J1,K1,K2,K3,K4,I,J,K,L,ERROR              
     /            ,  I4A(3,3,3,3),  I4B(3,3,3,3),  I4C(3,3,3,3)         

      DATA           ERROR/0/                                           

      I1=AINT(2.4)                                                      
      I2=I1/2                                                           
      I3=I1-1                                                           
      J1=I1+I2                                                          
      K1=J1-2                                                           
      K2=K1+1                                                           
      K3=K1*2                                                           
      K4=I2-J1                                                          
                                                                        
      I4A                            =1                                 
      I4B(I1**I2-I3  :J1:K1*K2/K3   ,                                   
     /    I1*I3-I2*I3:J1:K1+MOD(3,3),                                   
     /    I2         :J1:-K4-K1     ,                                   
     /    I2         :J1:K1+K2+K4   )=2                                 
      I4C(:,I3:J1:K1,I2:J1,:J1:K1)   =3                                 
                                                                        
      DO 10 L=1,3                                                       
        DO 10 K=1,3                                                     
          DO 10 J=1,3                                                   
            DO 10 I=1,3                                                 
              IF(I4A(I,J,K,L) .NE. 1 .OR.                               
     /           I4B(I,J,K,L) .NE. 2 .OR.                               
     /           I4C(I,J,K,L) .NE. 3     ) ERROR=1                      
   10 CONTINUE                                                          
                                                                        
      IF(ERROR .EQ. 0) THEN                                             
        WRITE(6,*) 'OK'                             
      ELSE                                                              
        WRITE(6,*) 'NG'                             
        WRITE(6,*) 'I4A=',I4A,'I4B=',I4B,'I4C=',I4C                     
      ENDIF                                                             
      STOP                                                              
      END                                                               
