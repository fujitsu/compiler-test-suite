subroutine s
interface
subroutine sub(act1,act2)
    interface
    function act1(x)
    real :: d1
    real :: act1
    end function
    subroutine act2(d2)
    real :: d2
    end subroutine
    end interface
end subroutine
end interface
call sub(my_f,my_s)
contains
function my_f(x)
real :: x,my_f
my_f = x+5.0
end function
subroutine my_s(y)
y=y+3.0
end subroutine
end subroutine

subroutine sub(act1,act2)
    interface
    function act1(x)
    real :: d1
    real :: act1
    end function
    subroutine act2(d2)
    real :: d2
    end subroutine
    end interface
    real :: res1,res2
    res2=3.0
    res1=act1(5.0)
    call act2(res2)
    if(res1 .ne. 10.0)print*,"101"
    if(res2 .ne. 6.0)print*,"102"
end subroutine

call s()
print*,"pass"
end
