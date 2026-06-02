module mod
procedure (ifun)::f
interface assignment(=)
 procedure f
end interface
private
public:: assignment(=)
contains
subroutine ifun(k,j)
intent(in) :: j
character,intent(out)::k
k = char(j)
end subroutine
end

use ::mod 
character::c
c=10
if (c/=char(10)) print *,10002
print *,'sngg868o : pass'
end
subroutine f(k,j)
intent(in) :: j
character,intent(out)::k
k = char(j)
end 
