call test01()
print *,"pass"
end
function ii()
ii=1
end 
function iiii()
iiii=1
end 
module mod
integer,external :: iiii
contains
function ifun(ii) result(if)
procedure(integer),pointer :: if
integer :: ii
external :: ii
if=>iiii
if=>ii
end function
subroutine sub(i)
integer :: i
i=100
end subroutine
end

subroutine test01()
end
