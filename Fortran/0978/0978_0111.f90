module mod
  type :: str
    sequence
    integer :: i
  end type
  type(str),target :: ti = str(100)
  contains
  subroutine msub(pt)
    interface
      subroutine sub(pt)
        type :: str
    sequence
          integer :: i
        end type
        type(str),pointer :: pt
      end subroutine
    end interface
    type(str),pointer,intent(in) :: pt
    ti = str(200)
    call sub(pt)
  end subroutine
end module

subroutine sub(pt)
  use mod
  type(str),pointer :: pt
  ti = str(300)
  if (pt%i/=300)write(6,*) "NG"
end subroutine

use mod
type(str),pointer :: pt
pt=>ti
call msub(pt)
print *,'pass'
end
