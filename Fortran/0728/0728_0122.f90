 call s1
 print *,'pass'
 end
  FUNCTION rd_choice (value, table) RESULT (iostat)
    IMPLICIT NONE

    INTEGER, INTENT (OUT) :: value
    CHARACTER (LEN = *), DIMENSION (:), INTENT (IN) :: table
    INTEGER :: iostat

    value = LBOUND (table,dim=1)
    iostat = 0

  END FUNCTION rd_choice
subroutine s1
end
