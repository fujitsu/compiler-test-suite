module mod1
  type TAG
  INTEGER P,IP
  end type
end module
PROGRAM TEST                                                      
  use mod1
  type(TAG) st(100)
  DO I = 1,100                                                   
     st(I)%P = 0                                                        
     IF( MOD(I,2).EQ.0 ) st(I)%P = -I                                   
     st(I)%IP = I * I                                                   
     IF( MOD(I,3).EQ.1 ) st(I)%IP = - 2 * I + 1                         
  END DO
  N = 50                                                            
  CALL ISNG(N,NBLACK,st)                                          
  PRINT *,N,NBLACK,st%P,st%IP                                             
  STOP                                                              
END PROGRAM TEST
!                                                                       
SUBROUTINE ISNG(N,NBLACK,st)                                    
  use mod1
  type(TAG) st(N)
  !                                                                       
  NRED = 0                                                          
  NBLACK = 0                                                        
  !VOCL LOOP,VECTOR                                                       
  DO I = 1, N                                                   
     IF ( st(I)%P .LT. 0 ) GO TO 210                                   
     !                                                                       
     !       RED POINT                                                       
     !                                                                       
     NRED = NRED + 1                                                
     st(NRED)%IP = I                                                   
     st(I)%P = NRED                                                    
     GO TO 220                                                      
     !                                                                       
     !     BLACK POINT                                                       
     !                                                                       
210  NBLACK = NBLACK + 1                                            
     J = N - NBLACK + 1                                             
     st(J)%IP = I                                                      
     st(I)%P = J                                                       
     !                                                                       
220  CONTINUE                                                          
  END DO
  !                                                                       
  RETURN                                                            
END SUBROUTINE ISNG
