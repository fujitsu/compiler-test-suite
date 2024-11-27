call test01()
call test02()
print *,"pass"
end 

subroutine test01()
type ty1
end type
interface ty1
end interface
if (1.eq.2) print *,ty1()
end subroutine

subroutine test02()
interface ty1
end interface
type ty1
end type
if (1.eq.2) print *,ty1()
end subroutine

subroutine test03()
type ty1
end type
interface ty1
function ifun()
end function
end interface
if (1.eq.2) print *,ty1()
end subroutine

