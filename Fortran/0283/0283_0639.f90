     IMPLICIT NONE
      CHARACTER(LEN=10) :: V(9) = 'xxx'
       CALL char_sub(V,9)
    CONTAINS 
     SUBROUTINE char_sub(d,n)
      integer :: n
      CHARACTER(LEN=n), INTENT(IN) :: d(n)

       associate(pp=>d(:)(3:))
          if(6== len(pp(2:)(2:))) print*,'pass'
       end associate
     END SUBROUTINE 
    END PROGRAM
