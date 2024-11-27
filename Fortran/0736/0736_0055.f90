MODULE charutils
  IMPLICIT NONE

  INTERFACE LEN_TRIM
    MODULE PROCEDURE my_len_trim
  END INTERFACE LEN_TRIM
  INTERFACE TRIM
    MODULE PROCEDURE my_trim
  END INTERFACE TRIM

  CHARACTER(LEN=1), PARAMETER, PRIVATE  :: space = ACHAR(32)
  CHARACTER(LEN=1), PARAMETER, PRIVATE  :: tab   = ACHAR(9)

CONTAINS
  PURE FUNCTION my_len_trim(s)
    INTEGER                             :: my_len_trim
    CHARACTER(LEN=*), INTENT(IN)        :: s

    my_len_trim = VERIFY(s, space//tab, BACK=.TRUE.)

    RETURN
  END FUNCTION my_len_trim

  PURE FUNCTION my_trim(s)
    CHARACTER(LEN=*), INTENT(IN)        :: s
    CHARACTER(LEN=LEN_TRIM(s))          :: my_trim

    my_trim = s(1:LEN_TRIM(s))
    RETURN
  END FUNCTION my_trim
END MODULE charutils
use charutils
print *,'pass'
end
