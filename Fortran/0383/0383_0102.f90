function func() result(ret)
  type ty1
    sequence
    integer :: ti
  end type
  type(ty1) :: ret
  ret = ty1(10)
end function

module mod1
  type ty1
    sequence
    integer :: ti = 2
  end type
  contains
  function m1func1() result(rst)
    type (ty1) :: rst
    entry ent01() result(rst)
    rst = ty1(1)
  end function
end module

use mod1
procedure(m1func1), pointer :: m1f1p
procedure(ent01), pointer :: m1ent
procedure(m1func1) :: func
type(ty1) :: sss1
m1f1p=>func
sss1 = m1f1p()
if ( 10 .ne. sss1%ti) print *,'fail'
m1ent=>func
sss1 = m1ent()
if ( 10 .ne. sss1%ti) print *,'fail'
print *,'pass '
end
