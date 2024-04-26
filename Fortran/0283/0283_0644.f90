     IMPLICIT NONE
      CHARACTER(LEN=10) :: V(5,8)
       CALL char_sub(V)
    CONTAINS 
     SUBROUTINE char_sub(d)
      CHARACTER(LEN=*), INTENT(IN) :: d(:,:)

       associate(pp=>d(:,:)(3:))
           if(7== len(pp(2:,:)(2:))) print*,'pass'
       end associate
     END SUBROUTINE 
    END PROGRAM 
