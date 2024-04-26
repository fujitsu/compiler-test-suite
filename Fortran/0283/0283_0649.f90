     IMPLICIT NONE
      CHARACTER(LEN=10) :: V(9,10) = 'xxx'
       CALL char_sub(V,9)
    CONTAINS 
     SUBROUTINE char_sub(d,n)
      integer :: n
      CHARACTER(LEN=10), INTENT(IN) :: d(n,10)

       associate(pp=>d(:,:)(3:))
          if(7== len(pp(2:,:)(2:))) print*,'pass'
       end associate
     END SUBROUTINE 
    END PROGRAM
