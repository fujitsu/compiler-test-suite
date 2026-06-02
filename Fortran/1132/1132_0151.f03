
      PROGRAM CV5220                                                    
        type STR
        REAL A(10)/10*90./,B(10,10)/70*2.5,30*4/                          
        end type STR
        TYPE(STR) STR_DATA
        
        DATA N,L/10,0/                                                    

      L=0                                                               
      IF(L.EQ.0) GOTO 11                                                
       L=0                                                              
       DO 10 I=1,N                                                      
       S=STR_DATA%A(I)                                                           
       DO 20 J=1,N                                                      
        S=S+STR_DATA%B(I,J)                                                      
  20   CONTINUE                                                         
       STR_DATA%A(I)=S                                                           
  10  CONTINUE                                                          
  11  WRITE(6,*) STR_DATA%A                                                      
      L=L+1                                                             

      STOP                                                              
      END                                                               
