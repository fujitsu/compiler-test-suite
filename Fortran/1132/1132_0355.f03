!             CVCT8030            LEVEL=4        DATE=87.11.09          
!********************************************************************C  
!*  1. PROGRAM NAME   :  CVCT8030                                   *C  
!*  2. PURPOSE        :  VGEN FUNCTION TEST                         *C  
!*                       .                                          *C  
!*  3. RESULTS        :  BUSY ON EXIT DATA                          *C  
!*  4. ENVIRONMENT    :  V10L20                                     *C  
!*  5. HISTORY        :  1986.2.14                                  *C  
!********************************************************************C  
module mod
  type TAG1
  INTEGER I10(1000),I11(1000),I12(1000),I13(1000),I14(1000)         
  end type
  type TAG2
  REAL    R10(1000),R11(1000),R12(1000),R13(1000),R14(1000)         
  end type
  type TAG3
  DOUBLE PRECISION  D10(1000),D11(1000),D12(1000),D13(1000)         
  DOUBLE PRECISION  D14(1000)                                       
  end type
end module
PROGRAM CV8030     
  use mod
  type (TAG1) st1
  type (TAG2) st2
  type (TAG3) st3
  DATA N/1000/                                                      
  CALL INIT(st1,st2,st3,N)                                              
  CALL SUB1(st1,st2,st3,N)                                              
  WRITE(6,*) (st1%I10(I),I=1,1000)                                      
  WRITE(6,*) (st2%R10(J),J=1,1000)                                      
  STOP                                                              
END PROGRAM CV8030
SUBROUTINE INIT(st1,st2, st3,N)                            
  use mod
  type(TAG1) st1
  type(TAG2) st2
  type(TAG3) st3
  IS4 = 3                                                           
  DO I=1,N                                                       
     IS1    = I                                                      
     st1%I10(I) = IS1                                                    
     IS2    = IS1 + I*2                                              
     st1%I11(I) = IS2                                                    
     st1%I12(I) = IS1 + 1                                                
     IS3 = - I + IS2 + st1%I10(I)                                        
     st1%I13(I) = IS3 + 2                                                
     st1%I14(I) = IS4                                                    
  END DO
  DO I=1,N                                                       
     st2%R10(I) = IS1 + IS2                                              
     st2%R11(I) = IS4*IS3                                                
     st2%R12(I) = -IS1                                                   
     st2%R13(I) = IS2*3                                                  
     st2%R14(I) = IS1-IS2                                                
     st3%D10(I) = IS1 + IS2                                              
     st3%D11(I) = IS4*IS3                                                
     st3%D12(I) = -IS1                                                   
     st3%D13(I) = IS2*3                                                  
     st3%D14(I) = IS1-IS2                                                
  END DO
  RETURN                                                            
END SUBROUTINE INIT
SUBROUTINE SUB1(st1,st2, st3,N)                            
  use mod
  type(TAG1) st1
  type(TAG2) st2
  type(TAG3) st3
  RETURN                                                            
END SUBROUTINE SUB1
