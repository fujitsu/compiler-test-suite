      REAL*4 RC(10,10,10)                                               
      DATA   RC/1000*1./                                                
      DO 10 I1=1,10                                                     
      DO 10 I2=1,10                                                     
      DO 10 I3=1,10                                                     
         RC(I3,I2,I1)=RC(I3,I2,I1)+I2                                   
 10   CONTINUE                                                          
      WRITE(6,*) 'RC=',RC                                               
      DO 20 I1=1,10                                                     
      DO 20 I2=1,10                                                     
      DO 20 I3=1,10                                                     
         RC(I3,I2,I1)=RC(I3,I2,I1)+2.                                   
 20   CONTINUE                                                          
      WRITE(6,*) 'RC=',RC                                               
      STOP                                                              
      END                                                               
