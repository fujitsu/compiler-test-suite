program main
integer:: obj(2),res(2)
res = fun(obj)
if (res(2)/=9) print *,201,res(2)
print *,'pass'
contains
function fun(d1) result(r)
integer:: d1(2),r(2)
d1 = 9
r = d1
end function
end program
