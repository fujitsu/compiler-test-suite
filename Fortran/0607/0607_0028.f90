integer :: xx(20) = 10
associate (aa=>[(fun(),fun1(),I=1,5)], bb=>xx)
if (all(bb == aa)) print *,'PASS'
end associate
contains

function fun()
integer:: fun(2)
fun = 10
end function

function fun1()
integer:: fun1(2)
fun1 = 10
end function

end
