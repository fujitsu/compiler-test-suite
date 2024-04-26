program main
type ty(k1)
  integer,kind :: k1
  integer(kind=k1) :: ii
end type
type(ty(2)) :: obj
integer res
res = fun(obj)
if (res/=9) print *,201,res
print *,'pass'
contains
integer function fun(d1)
type(ty(2)) :: d1
type(ty(2)) :: d2
d1%ii = 9
fun = d1%ii
end function
end program
