function f1()
interface
function fun(f)
    interface
    function f(x)
    real :: x, f
    end function
    end interface
end function
end interface

real :: f1
f1 = fun(my_f)
contains
function my_f(x)
real :: x,my_f
my_f = x+5
end function
end function


function fun(f)
real :: fun
    interface
    function f(x)
    real :: x, f
    end function
    end interface
fun=f(7.0)
end function

if( f1() .ne. 12)print*,"101"
print*,"pass"
end
