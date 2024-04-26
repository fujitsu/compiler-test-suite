subroutine sub1_1(i)
external :: i
end subroutine

subroutine ssss(jfun)
interface
function ifun() result(zzz)
integer,pointer ::zzz
end function
end interface
procedure(ifun),pointer :: jfun
call sub1_1(jfun)
end

10print *,'pass'
end
function ifun() result(zzz)
integer,pointer ::zzz
end function
