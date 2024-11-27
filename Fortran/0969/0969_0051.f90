call test01()
print *,"pass"
end


subroutine test01()
type ty1
 integer :: ii
end type
type(ty1) :: str
interface ty1
function ifun()
end function
end interface
print *,ty1()
end

function ifun()
ifun=1
end function
