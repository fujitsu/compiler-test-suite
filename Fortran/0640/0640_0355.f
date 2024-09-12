      PROGRAM MAIN                                                    
      REAL    EA(100),EB(100)/100*1/,EC(100)                            
      INTEGER IA(100)/95,99*1/,IB(100)/100*0/,IC(100)                   
      J=0                                                               
      K=0                                                               
      EC = 0
      IC = 0
      EA(1)=1                                                           
      DO 20 I=2,100                                                     
       EA(I)=I                                                          
       IC(I)=I                                                          
       IF(EA(I).GT.50) THEN                                             
        J=J+1                                                           
        EB(J)=EA(I)*EA(1)                                               
        EC(I)=EA(I)                                                     
        IA(I)=IA(1)+5                                                   
        EB(K+1)=IB(I)*2+IC(I)+INT(EA(I))/IA(I)                          
        K=K+1                                                           
        EA(I)=EB(K)/2.0                                                 
        EC(I)=IB(IA(I))+EA(I)                                           
        NT=IA(1)/2                                                      
        IB(I)=IB(I)+NT+IA(1)*5/3                                        
       ENDIF                                                            
  20  CONTINUE                                                          
      WRITE(6,*) EA,IA                                                  
      WRITE(6,*) EB,IB                                                  
      WRITE(6,*) EC,IC,K,J                                              
      END                                                               
