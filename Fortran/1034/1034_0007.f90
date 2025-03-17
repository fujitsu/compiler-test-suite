module tdef
  type STRUCT2
     INTEGER :: i
  end type STRUCT2
end module tdef

PROGRAM MAIN
use tdef
  IMPLICIT NONE

  interface
     subroutine get_struct(S)
       use tdef
       type(STRUCT2), DIMENSION(5) :: S
     end subroutine get_struct
  end interface

  type(STRUCT2), DIMENSION(5) :: my_struct2
  my_struct2(4)%i = 33

  call get_struct(my_struct2)

END PROGRAM MAIN

SUBROUTINE get_struct(S)

  use tdef

  type(STRUCT2), DIMENSION(5) :: S
  write(1,*) S(4)%i

call chk
print *,'pass'

END SUBROUTINE get_struct
subroutine chk
rewind 1
read (1,*) i
if (i/=33)print *,'error'
end
