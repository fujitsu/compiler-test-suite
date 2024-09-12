      PROGRAM MAIN                                                   
      IMPLICIT  REAL*8(A-D),LOGICAL*4(L)                                
      DIMENSION   DA10(20,20),DA20(20,20),DA30(20,20),                  
     *          DB10(20,20,20),DB20(20,20,20),DB30(20,20,20)            
      PARAMETER  (JC2=2)                                                

      DATA     DA10/400*1.0D0/,DA20/400*2.D0/,DA30/400*3.D0/            
      DATA     DB10/8000*4.D0/,DB20/8000*5.D0/,DB30/8000*3.D0/          
      DATA     N1/1/,N2/2/,N3/10/,N4/15/,N5/20/                         

      DO 10 I=14-N1,5,-1                                                
       DO 10 J=N2,N4                                                    
         DA10(I,J) = DA20(I,J-1)*DA30(I,N4)                             
         DA20(I,J) = DA10(N3+5,J+1)+DA30(N4,J-1)                        
         DA30(N4,J)= DA10(1+4+N3,N2)-DB10(I,J,N1)                       
  10  CONTINUE                                                          

      DO 20 I1=N4,N2,-1                                                 
       DO 20 I2=2,N3                                                    
        DO 20 I3=N5,N2,-1                                               
          DB10(I1,I2,I3) = DB20(N4,N3,I3)*DA10(I1,I3)                   
          DB20(I1,I2,I3) = DB10(I1,I2,I3)+DB30(N3,I2,I3-1)              
          DB30(I1,I2,I3) = DB20(N4,JC2,N5)+DB10(N4,I2,I3)               
  20  CONTINUE                                                          
      WRITE(6,*) ' (DA10) ',((DA10(K1,K2),K1=1,10),K2=1,10)             
      WRITE(6,*) ' (DA20) ',((DA20(K1,K2),K1=1,10),K2=1,10)             
      WRITE(6,*) ' (DA30) ',((DA30(K1,K2),K1=1,10),K2=1,10)             
      WRITE(6,*) ' (DB10) ',(((DB10(K1,K2,K3),K1=1,10),K2=1,10)         
     1                         ,K3=1,5)                                 
      WRITE(6,*) ' (DB20) ',(((DB20(K1,K2,K3),K1=1,10),K2=1,10)         
     1                         ,K3=1,5)                                 
      WRITE(6,*) ' (DB30) ',(((DB30(K1,K2,K3),K1=1,10),K2=1,10)         
     1                         ,K3=1,5)                                 
      STOP                                                              
      END                                                               
