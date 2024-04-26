subroutine test01()
interface
function ifun(i) result(cha)
character(len=i+10) :: cha
end function   
end interface
type ty1
procedure(ifun),nopass,pointer :: ip
end type
type(ty1) :: str
call kasub(str%ip(3),3)
contains
subroutine kasub(ip,i)
character(len=i+10) :: ip
end subroutine
end
print *,'pass'
end

