subroutine sub1_1(i)
external :: i
end subroutine

interface
function fun() result(zzz)
integer,pointer ::zzz
end function
end interface
procedure(fun),pointer :: ifun
call sub1_1(ifun)
10print *,'pass'
end
