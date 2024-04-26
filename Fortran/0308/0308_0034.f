      PARAMETER (J=4,JJ=J*J,JJJ=J*J*J)                                  
      REAL*4 RA(4,4,4),RC(4,4,4)                                        
      INTEGER*4 N,H1,H2,H3,K,L,M
      DATA (((RA(I1,I2,I3),I1=1,J),I2=1,J),I3=1,J)/JJJ*0.0/             
      DATA (((RC(I1,I2,I3),I1=1,J),I2=1,J),I3=1,J)/JJ*4.0,JJ*5.0        
     .                                            ,JJ*6.0,JJ*7.0/       

      N=4                                                               
      H1=1                                                              
      H2=4                                                              
      H3=10                                                             

      CALL SUB(RA,N,H1,H2,H3)                                           

      DO 10 K=1,4                                                       
        DO 10 L=1,4                                                     
          DO 10 M=1,4                                                   
            IF(RA(K,L,M) .NE. RC(K,L,M)) GOTO 20                        
   10 CONTINUE                                                          
      WRITE(6,*) 'OK'
      GOTO 30                                                           

   20 WRITE(6,*) 'NG'
      WRITE(6,*) 'RA=',RA                                               
      WRITE(6,*) 'RC=',RC                                               
      WRITE(6,*) 'N=',N,'H1=',H1,'H2=',H2,'H3=',H3                      

   30 STOP                                                              
      END                                                               

      SUBROUTINE SUB(RA,N,H1,H2,H3)                                     
      PARAMETER (J=10,JJ=J*J)                                           
      INTEGER H1,H2,H3,N                                                
      DIMENSION RA(N,N,N),RB(10,10,10)                                  
      DATA (((RB(I1,I2,I3),I1=1,J),I2=1,J),I3=1,J)/JJ*1.0,JJ*2.0,JJ*3.0 
     .    ,JJ*4.0,JJ*5.0,JJ*6.0,JJ*7.0,JJ*8.0,JJ*9.0,JJ*10.0/           

      RA(H1:H2,1:4:1,:)=RB(H2:H3:2,1:10:3,4:7)                          

      RETURN                                                            
      END                                                               
