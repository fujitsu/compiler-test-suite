      PROGRAM MAIN                                                   
      REAL,DIMENSION(10)::A                                                 
      INTEGER I,J,K,L,LL                                                
      DATA A/42.,99.,421.,374.,5548.,0.,100.,21.,232.,87681./           
      DATA I,J,K,L,LL/5*0/                                              
                                                                        
      K=2*J*I+K                                                         
      IF (K>0) L=0                                                      
      L=2*J*K+K*LL*3+1                                                  
      A(1:10)=A(L)                                                      
      LL=LL+1                                                           
                                                                        
      DO 10 II=1,10                                                     
        IF (A(II) .NE. 42.) THEN                                        
          WRITE (6,*) A                                                 
          WRITE (6,999)                                                 
          GOTO  20                                                      
        END IF                                                          
  10  CONTINUE                                                          
      WRITE (6,998)                                                     
  20  CONTINUE                                                          
 998  FORMAT (1H ,'**** OK ****')                            
 999  FORMAT (1H ,'**** NG ****')                            
      STOP                                                              
      END                                                               
