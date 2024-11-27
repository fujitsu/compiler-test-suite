interface
function fun(fun1,ii,jj) result(res) bind(c)
use iso_c_binding
interface
function fun1(x) bind(c)
use iso_c_binding
real(c_float) :: x[*]
real(c_float) :: fun1
end function
end interface
real(c_float):: ii[*], jj[*]
real(c_float) :: res
end function fun
end interface
end
