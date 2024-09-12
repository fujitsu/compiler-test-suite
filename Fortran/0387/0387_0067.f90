interface
 function func1() result(rst)
 end function
end interface

call csub1(func1)
call csub2(func1())

print *,'pass'
contains
subroutine csub1(eee)
 external :: eee
end subroutine
subroutine csub2(eee)
 real :: eee
end subroutine

end

function eee()
 real :: eee
 eee = 1.0
end function

function func1() result(rst)
 rst = 1.0
end function


