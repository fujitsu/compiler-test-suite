program main
type ty(k1)
  integer,kind :: k1
  integer(kind=k1) :: ii
end type
type(ty(2)) :: obj,res
res = fun(obj)
if (res%ii/=9) print *,201,res%ii
print *,'pass'
contains
function fun(d1)
type(ty(2)) ::fun
type(ty(2)) :: d1
d1%ii = 9
fun = d1
end function
end program
