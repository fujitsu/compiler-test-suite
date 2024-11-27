module mod
  integer,target :: ti = 100
  contains
  subroutine sub(pi)
    integer,pointer,intent(in) :: pi
    ti = 200
  end subroutine
end module

use mod
integer,pointer :: pi
pi=>ti
call sub(pi)
if (pi/=200)write(6,*) "NG"
print *,'pass'
end
