      INTEGER*4   A(10)/10*1/                                           
      INTEGER*4   IA                                                    
      EQUIVALENCE (IA,IAA)                                              
      IA=1                                                              
      PRINT *, (A(I),I=IA,10,1)                                         
      WRITE(6,'(17H ### TEST END ###)')                                 
      STOP                                                              
      END                                                               
