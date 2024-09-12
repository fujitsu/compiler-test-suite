function f1()
interface
function fun(s)
    interface
    subroutine s(x)
    real :: x
    end subroutine
    end interface
end function
end interface

real :: f1
f1 = fun(my_sub)
contains
subroutine my_sub(x)
real :: x
x = x+5
end subroutine
end function


function fun(s)
    interface
    subroutine s(x)
    real :: x
    end subroutine
    end interface
real :: fun
real :: act
act=7
call s(act)
fun=act
end function

if( f1() .ne. 12)print*,"101"
print*,"pass"
end
