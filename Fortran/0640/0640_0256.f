      PROGRAM MAIN                                                   
      IMPLICIT  REAL*8(A-D),LOGICAL*4(L)                                
      DIMENSION   DA10(20,20),DA20(20,20),DA30(20,20),                  
     *          DB10(20,20,20),DB20(20,20,20),DB30(20,20,20)            

      DATA     DA10/400*1.0D0/,DA20/400*2.D0/,DA30/400*3.D0/            
      DATA     DB10/8000*4.D0/,DB20/8000*5.D0/,DB30/8000*3.D0/          
      DATA     N1/1/,N2/2/,N3/10/,N4/15/,N5/20/                         

      DO 10 I=1,N4                                                      
       DO 10 J=I,N5                                                     
         DA10(I,J) = DA20(N5,J)*DA30(N4,I)                              
         DA20(J,I) = DA10(I,I)+ DA30(I,J)                               
  10  CONTINUE                                                          
      DO 20 K1=N4,5,-1                                                  
       DO 20 K2=K1,1,-1                                                 
         DA30(K1,K2) = DA10(K1,K2)*DB10(K1,K2,K2)                       
         DB10(K2,N4,K1) = DB20(N1,K2,K1)- DA20(K1,K2)                   
         DB20(K1,K1,K2) = DA30(N4,K1) + DB30(K1,K2,N2)                  
  20  CONTINUE                                                          

      DO 30 I1=N4,N2,-1                                                 
       DO 30 I2=I1,N5                                                   
         DA10(I2,N1) = DA10(I1,N2) - DB30(N1,N1,I2)                     
         DB30(N1,I2,I1) = DA20(I1,I2)*DA30(I2,I1)                       
         DA20(I1,I2-1) = DB10(I1,I1,I2)                                 
  30  CONTINUE                                                          
      DO 40 J1=N3,1,-1                                                  
       DO 40 J2=J1,N5                                                   
         DB10(J2,N2,N1) = DB30(J2,N3,N2)-DA10(J1,J2)                    
         DA20(J2,N3) = DA30(J2,J1) + DB10(J1,N1,N2)                     
         DB30(J1,N1,N1) = DB30(J1,N1,N1)+DA20(J1,N3)                    
  40  CONTINUE                                                          
      WRITE(6,*) ' (DA10) ',((DA10(K1,K2),K1=1,10),K2=1,10)             
      WRITE(6,*) ' (DA20) ',((DA20(K1,K2),K1=1,10),K2=1,10)             
      WRITE(6,*) ' (DA30) ',((DA30(K1,K2),K1=1,10),K2=1,10)             
      WRITE(6,*) ' (DB10) ',(((DB10(K1,K2,K3),K1=1,10),K2=1,10)         
     1                         ,K3=1,5)                                 
      WRITE(6,*) ' (DB20) ',(((DB20(K1,K2,K3),K1=1,10),K2=1,5)          
     1                         ,K3=1,5)                                 
      WRITE(6,*) ' (DB30) ',(((DB30(K1,K2,K3),K1=1,10),K2=1,5)          
     1                         ,K3=1,5)                                 
      STOP                                                              
      END                                                               
