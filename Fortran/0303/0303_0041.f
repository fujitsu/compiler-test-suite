      PROGRAM  MAIN
      DATA N/5/                                                        
      COMPLEX*8  C11(10),C12(10),C13(10),C14(10),C15(10),C13V
      DATA C14/(1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),         
     1         (9,9),(10,10)/,C13V/(0,0)/
      DATA C15/(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),
     1         (0,0),(0,0)/

      C11 = (1.0,2.0)                                              
      C12 = (1.0,1.0)
      C13 = C14
      DO 10 I=1,N                                                       
        C15(I) = C13(I) + (1.5,2.5)                                     
        C13V = C13V + ( C11(I) + C12(I) + C13(I) + C15(I) )
   10 CONTINUE                                                          
      WRITE(6,*) C15                                                    
      WRITE(6,*) C13V                                                   
      STOP                                                              
      END                                                               
