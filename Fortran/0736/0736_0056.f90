MODULE charutils
  IMPLICIT NONE

  INTERFACE LEN_TRIM
    MODULE PROCEDURE my_len_trim
  END INTERFACE LEN_TRIM
  INTERFACE TRIM
    MODULE PROCEDURE my_trim
  END INTERFACE TRIM

  CHARACTER(LEN=1), PARAMETER :: space = ACHAR(32)
  CHARACTER(LEN=1), PARAMETER  :: tab   = ACHAR(9)

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
interface
subroutine ss(s,cc)
use charutils
character*10 c,s*(*),cc(:)
end subroutine
end interface
character*10 cc(5)
cc=(/'1'//tab//'    ','12'//tab//'   ','123'//tab//'  ','1234'//tab//' ','12345'//tab/)
call ss('1234'//tab,cc)
print *,'pass'
end
subroutine ss(s,cc)
use charutils
character*10 c,s*(*),cc(:)*(*)
c=my_trim(s)
write(16,*)'#'//c//'#'
write(16,*)len(my_trim(s))
write(16,*)(my_trim(cc(i)),i=1,size(cc))
call sx(s)
end
subroutine sx(s)
character*10 c,s*(*)
c=trim(s)
write(16,*)'%1%','#'//c//'#'
write(16,*)'%2%',len(trim(s))
write(16,*)'%3%',len_trim(s)
end
