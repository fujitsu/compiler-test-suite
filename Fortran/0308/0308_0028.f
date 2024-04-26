      PARAMETER (J=3,JJ=J*J,JJJ=J*J*J,N=3)                              
      REAL*4 RA(3,3,3),RB(3,3,3)                                        
      DATA (((RA(I1,I2,I3),I1=1,J),I2=1,J),I3=1,J)/JJJ*0.0/             
      DATA (((RB(I1,I2,I3),I1=1,J),I2=1,J),I3=1,J)/JJ*5.0,JJ*0.0,JJ*7.0/

      CALL SUB(RA,N)                                                    

      DO 10 K=1,3                                                       
        DO 10 L=1,3                                                     
          DO 10 M=1,3                                                   
            IF(RA(M,L,K) .NE. RB(M,L,K)) GOTO 20                        
   10 CONTINUE                                                          
      WRITE(6,*) 'OK'                             
      GOTO 30                                                           

   20 WRITE(6,*) 'NG'                             
      WRITE(6,*) 'RA=',RA                                               
      WRITE(6,*) 'RB=',RB                                               
      WRITE(6,*) 'N=',N,'K=',K,'L=',L,'M=',M                            

   30 STOP                                                              
      END                                                               
      SUBROUTINE SUB(RA,N)                                              
      PARAMETER (J=10,JJ=J*J)                                           
      DIMENSION RA(N,N,N),RB(10,10,10)                                  
      DATA (((RB(I1,I2,I3),I1=1,J),I2=1,J),I3=1,J)/JJ*1.0,JJ*2.0,JJ*3.0 
     .     ,JJ*4.0,JJ*5.0,JJ*6.0,JJ*7.0,JJ*8.0,JJ*9.0,JJ*10.0/          

      RA(1:3,1:3:1,1:3:2)=RB(1:10:4,1:8:3,5:7:2)                        

      RETURN                                                            
      END                                                               
