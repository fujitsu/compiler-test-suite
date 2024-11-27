module mod
  integer,target :: ti = 100
  contains
  subroutine msub(pi)
    interface
      subroutine sub(pi)
        integer,pointer :: pi
      end subroutine
    end interface
    integer,pointer,intent(in) :: pi
    ti = 200
    call sub(pi)
  end subroutine
end module

subroutine sub(pi)
  use mod
  integer,pointer :: pi
  ti = 300
  if (pi/=300)write(6,*) "NG"
end subroutine

use mod
integer,pointer :: pi
pi=>ti
call msub(pi)
print *,'pass'
end
