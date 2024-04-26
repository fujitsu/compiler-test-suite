subroutine sub1_1(i)
external :: i
end subroutine

interface
function ifun() result(zzz)
integer,pointer ::zzz
end function
end interface
call sub1_1(ifun)
10print *,'pass'
end
function ifun() result(zzz)
integer,pointer ::zzz
end function
