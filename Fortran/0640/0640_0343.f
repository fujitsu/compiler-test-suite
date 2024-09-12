      PROGRAM MAIN                                                    
      INTEGER   IG(10)/9*3,2/,MXC/3/,NA/10/,NA2/10/                     
      DO 170 L=1,10                                                     
      IF( IG(NA).NE.MXC) GO TO 180                                      
      IG(NA)=0                                                          
  170 NA=NA-1                                                           
  180 NA2=NA                                                            
      WRITE(6,*) NA2                                                    
      END                                                               
