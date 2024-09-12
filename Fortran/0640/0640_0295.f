      PROGRAM MAIN                                                   
      DATA N/10/                                                        
      COMPLEX*8  C11(10),C12(10),C13(10),C14(10),C15(10),C16(10),       
     1           C17(10),C11V,C12V,C13V                                 
      DATA C14/(1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),         
     1         (9,9),(10,10)/,C13V/(0,0)/                               
      LOGICAL*4   L20(10)                                               
      COMPLEX*8   C20(10),C21(10),C22(10),C23(10),C24(10),C25(10),      
     1            C20V,C21V,C22V                                        
      DATA  L20/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,                   
     1          .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./                  
      DATA  C22V/(0,0)/                                                 

      C20 = 0
      C21 = 0 
      C22 = 0
      C23 = 0
      C24 = 0
      C25 = 0

      DO 10 I=1,N                                                       
        C11V   = (1.0,1.0)                                              
        C12V   = C11V                                                   
        C11(I) = (1.0,2.0)                                              
        C12(I) = C12V                                                   
        C13(I) = C14(I)                                                 
        C15(I) = C13(I) + (1.5,2.5)                                     
        C16(I) = (2.0,3.0) - C15(I)                                     
        C17(I) = C15(I) * C16(I)                                        
        C13V = C13V + ( C11(I) + C12(I) + C13(I) + C15(I) - C16(I)      
     1              +   C17(I) )                                        
   10 CONTINUE                                                          
      WRITE(6,*) C11                                                    
      WRITE(6,*) C12                                                    
      WRITE(6,*) C13                                                    
      WRITE(6,*) C15                                                    
      WRITE(6,*) C16                                                    
      WRITE(6,*) C17                                                    
      WRITE(6,*) C13V                                                   

      DO 20 I=1,N                                                       
        IF ( L20(I) ) THEN                                              
          C20V   = (1.0,1.0)                                            
          C21V   = C20V                                                 
          C20(I) = (1.0,2.0)                                            
          C21(I) = - C21V                                               
          C22(I) = C21(I)                                               
          C23(I) = C22(I) + (1.5,2.5)                                   
          C24(I) = (2.0,3.0) - C23(I)                                   
          C25(I) = C24(I) * C23(I)                                      
          C22V   = C22V +(C20(I)+C21(I)+C22(I)+C23(I)+C24(I)+C25(I))    
        ENDIF                                                           
   20 CONTINUE                                                          
      WRITE(6,*) C20                                                    
      WRITE(6,*) C21                                                    
      WRITE(6,*) C22                                                    
      WRITE(6,*) C23                                                    
      WRITE(6,*) C24                                                    
      WRITE(6,*) C25                                                    
      WRITE(6,*) C22V                                                   
      STOP                                                              
      END                                                               
