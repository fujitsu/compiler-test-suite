     IMPLICIT NONE
      CHARACTER(LEN=:),allocatable :: V(:)
      CHARACTER(LEN=10) :: Vtgt(4)='xxx'

      allocate(V,source=Vtgt)
       CALL char_sub(V)
    CONTAINS 
     SUBROUTINE char_sub(d)
      CHARACTER(LEN=:), INTENT(IN),allocatable :: d(:)

       associate(pp=>d(:)(:))
           if(10== len(pp(:)(:))) print*,'pass'
       end associate
     END SUBROUTINE 
    END PROGRAM 
