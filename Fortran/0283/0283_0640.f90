     IMPLICIT NONE
      CHARACTER(LEN=10) :: V(5)
       CALL char_sub(V,4)
    CONTAINS 
     SUBROUTINE char_sub(d,n)
      integer :: n
      CHARACTER(LEN=*), INTENT(IN) :: d(n)

       associate(pp=>d(:)(3:))
           if(7== len(pp(2:)(2:))) print*,'pass'
       end associate
     END SUBROUTINE 
    END PROGRAM 
