     IMPLICIT NONE
      CHARACTER(LEN=:),pointer :: V(:)
      CHARACTER(LEN=10),target :: Vtgt(4)

      V=>Vtgt
       CALL char_sub(V)
    CONTAINS 
     SUBROUTINE char_sub(d)
      CHARACTER(LEN=:), INTENT(IN),pointer :: d(:)

       associate(pp=>d(:)(3:))
           if(8== len(pp(2:)(:))) print*,'pass'
       end associate
     END SUBROUTINE 
    END PROGRAM 
