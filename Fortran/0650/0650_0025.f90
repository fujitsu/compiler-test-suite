      PROGRAM MAIN                
      CALL SUBZ()                
      PRINT *,'pass'                    
      contains
      SUBROUTINE SUBZ()                       
      DATA A/0.0/                            
      CALL SUB1(A)                          
      CALL SUB2(A)                         
      END                                 subroutine 
      SUBROUTINE SUB1(A)                
      CALL SUB(A)                      
      END                       subroutine        
      SUBROUTINE SUB2(A)             
      EXTERNAL SUB                  
      CALL SUB(A)                 
      END           subroutine               
      END                                       
      SUBROUTINE SUB(A)         
      A=A+1.0                  
      END  subroutine                    
