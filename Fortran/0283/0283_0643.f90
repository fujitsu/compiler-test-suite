     IMPLICIT NONE
      CHARACTER(LEN=10) :: V(9,9) = 'ABCDEFGHIJ'
       CALL char_sub(V,10)
    CONTAINS 
     SUBROUTINE char_sub(d,n)
      integer :: n
      CHARACTER(LEN=n), INTENT(IN) :: d(:,:)

       associate(pp=>d(:,:)(3:))
          if(7== len(pp(2:,:)(2:))) print*,'pass'
       end associate
     END SUBROUTINE 
    END PROGRAM
