      PARAMETER (J1=4,JJ1=J1*J1,JJJ1=J1*J1*J1)                          
      PARAMETER (J2=5,JJJ2=J2*J2*J2)                                    
      REAL*4 RA(4,4,4),RC(5,5,5),RB(4,4,4)                              
      INTEGER*4 N1,N2,N3,K,L,M
      DATA (((RA(I1,I2,I3),I1=1,J1),I2=1,J1),I3=1,J1)/JJJ1*0.0/         
      DATA (((RC(I1,I2,I3),I1=1,J2),I2=1,J2),I3=1,J2)/JJJ2*0.0/         
      DATA (((RB(I1,I2,I3),I1=1,J1),I2=1,J1),I3=1,J1)/3.0,0.0,3.0,0.0   
     .,3.0,0.0,3.0,0.0,3.0,0.0,3.0,0.0,3.0,0.0,3.0,0.0,JJ1*0.0,5.0,0.0  
     .,5.0,0.0,5.0,0.0,5.0,0.0,5.0,0.0,5.0,0.0,5.0,0.0,5.0,0.0,JJ1*0.0/ 

      N1=5                                                              
      CALL SUB(RC,N1,N2,N3)                                             
      RA(1:N1+N3:2,1:N1+N3,1:4:2)=RC(1:N2+N2:2,2:N2+N3:1,2:5:2)

      DO 10 K=1,4                                                       
        DO 10 L=1,4                                                     
          DO 10 M=1,4                                                   
            IF(RA(K,L,M) .NE. RB(K,L,M)) GOTO 20                        
   10 CONTINUE                                                          
      WRITE(6,*) 'OK'                               
      GOTO 30                                                           

   20 WRITE(6,*) 'NG'                               
      WRITE(6,*) 'RA=',RA                                               
      WRITE(6,*) 'RC=',RC                                               
      WRITE(6,*) 'N=',N1,'N2=',N2,'N3=',N3                              

   30 STOP                                                              
      END                                                               

      SUBROUTINE SUB(RC,N1,N2,N3)                                       
      PARAMETER (J=10,JJ=J*J)                                           
      DIMENSION RC(N1,N1,N1),RB(10,10,10)                               
      DATA (((RB(I1,I2,I3),I1=1,J),I2=1,J),I3=1,J)/JJ*1.0,JJ*2.0,JJ*3.0 
     .    ,JJ*4.0,JJ*5.0,JJ*6.0,JJ*7.0,JJ*8.0,JJ*9.0,JJ*10.0/           

      RC(1:5:2,1:5,:)=RB(6:10:2,1:10:2,2:6)                             
      N1=1                                                              
      N2=2                                                              
      N3=3                                                              

      RETURN                                                            
      END                                                               
