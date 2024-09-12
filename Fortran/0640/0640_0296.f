      PROGRAM MAIN                                                   
      DATA N/10/                                                        
      INTEGER*4   L10(10),L11(10),L12(10),L13(10),L14(10),L15(10),      
     1            L16(10),L17(10),L18(10),L19(10),L20(10)               
      INTEGER*4   L10V,L11V,L12V                                        
      INTEGER*4   I10(10),I11(10)                                       
      DATA  L10V,L11V,L12V/1,2,3/                                       
      DATA  L11/1,-2,3,4,-5,6,-7,-8,9,0/                                
      DATA  L12/0,1,0,0,-2,0,0,-3,4,5/                                  
      DATA  L14/0,6,0,-7,8,9,0,-100,0,10/                               
      DATA  L17/11,0,111111111,0,0,888881,0,-21,0,0/                    
      DATA  I10/1,0,1,0,2,3,4,0,-1,3/                                   
      DATA  I11/0,1,-1,0,2,0,4,0,-1,4/                                  

      INTEGER*4 L21(10),L22(10),L23(10)                                 
      INTEGER*4 I20V,I22(10),I20(10),I21(10),I21V/-123/                 
      INTEGER*4 I23(10)                                                 
      DATA  I20V/3/,I22/1,0,Z'FFFEFEFF',4,0,Z'FFFFFFFF',0,8,-9,0/           

      INTEGER*4  L30(10),L31(10),L32(10)                                
      INTEGER*4  I30(10),I31(10),I32(10),I33(10),I34(10),I35(10),       
     *           I36(10)                                                
      DATA  L30V/1234/,I30V/2/                                          
      DATA  I30/-1,2,0,-4,5,-6,7,8,-9,10/,I31/1,-2,0,-1,2,-3,3,2,1,1/   
      DATA  I34/1,-3,7,-2,-9,3,0,1,6,1/                                 
      DATA  I35/1,0,-3,4,5,-4,-3,2,1,0/                                 

      DO 10 I=1,N                                                       
        L10(I) = IAND(L10V,L11V)                                        
        L12(I) = IAND(L10V,L11(I))                                      
        L13(I) = IAND(L12(I),L12V)                                      
        L15(I) = IAND(L13(I),L14(I))                                    
        L16(I) = IOR(L15(I),I10(I))                                     
        L18(I) = IOR(I11(I),L17(I))                                     
        L19(I) = IOR(I10(I),I11(I))                                     
        L20(I) = IEOR(IAND(L10(I),L12(I)),IOR(L18(I),L19(I)))           
   10 CONTINUE                                                          
      WRITE(6,*) 'L10 = ',L10                                           
      WRITE(6,*) 'L12 = ',L12                                           
      WRITE(6,*) 'L13 = ',L13                                           
      WRITE(6,*) 'L15 = ',L15                                           
      WRITE(6,*) 'L16 = ',L16                                           
      WRITE(6,*) 'L17 = ',L17                                           
      WRITE(6,*) 'L18 = ',L18                                           
      WRITE(6,*) 'L19 = ',L19                                           

      DO 20 I=1,N                                                       
        L21(I) = NOT(I20V)                                              
        L22(I) = NOT(I22(I))                                            
        L23(I) = NOT(L22(I))                                            
        I20(I) = NOT(I22(I))                                            
        I21(I) = NOT(I21V)                                              
        I23(I) = NOT(L23(I))                                            
   20 CONTINUE                                                          
      WRITE(6,*)  'L21 = ',L21                                          
      WRITE(6,*)  'L22 = ',L22                                          
      WRITE(6,*)  'L23 = ',L23                                          
      WRITE(6,*)  'I20 = ',I20                                          
      WRITE(6,*)  'I21 = ',I21                                          
      WRITE(6,*)  'I23 = ',I23                                          

      DO 30 I=1,N                                                       
        L30(I) = ISHFT(L30V,3)                                          
        L31(I) = ISHFT(L30(I),-2)                                       
        L32(I) = ISHFT(I34(I),2)                                        
        I32(I) = ISHFT(I30(I),-4)                                       
        I33(I) = ISHFT(I31(I),1)                                        
        I35(I) = ISHFT(I35(I),-3)                                       
        I36(I) = ISHFT(I30V,1)                                          
   30 CONTINUE                                                          
      WRITE(6,*) 'L30 = ',L30                                           
      WRITE(6,*) 'L31 = ',L31                                           
      WRITE(6,*) 'I32 = ',I32                                           
      WRITE(6,*) 'I33 = ',I33                                           
      WRITE(6,*) 'I35 = ',I35                                           
      WRITE(6,*) 'I36 = ',I36                                           
      STOP                                                              
      END                                                               
