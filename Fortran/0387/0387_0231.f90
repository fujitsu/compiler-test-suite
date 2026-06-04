implicit none

interface func
 function func(i) result(rst)
  integer :: i
  integer :: rst
 end function
 function func2(i) result(rst)
  real    :: i
  integer :: rst
 end function
end interface

interface
 function func3(i) result(rst)
  integer :: i
  integer :: rst
 end function
end interface

type ty1
 procedure (func3),nopass,pointer :: ty1p
end type

type(ty1) :: t1
integer :: i

t1%ty1p=>func

t1%ty1p=>null()

t1 = ty1(func)
i = t1%ty1p(1)

if (i.ne.1) print *,'fail'

print *,'pass'

end

function func(i) result(rst)
 integer :: i
 integer :: rst
 rst = i
end function
function func2(i) result(rst)
 real    :: i
 integer :: rst
 rst=int(i)
end function
function func3(i) result(rst)
 integer :: i
 integer :: rst
 rst = i
end function
