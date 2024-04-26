program main
type ty
  integer(kind=2) :: ii
end type
type(ty) :: obj,res
res = fun(obj)
if (res%ii/=9) print *,201,res%ii
print *,'pass'
contains
type(ty) function fun(d1)
type(ty) :: d1
d1%ii = 9
fun = d1
end function
end program
