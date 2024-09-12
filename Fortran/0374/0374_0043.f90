call test01()
print *,'pass'
end

module mod
contains
subroutine sub() bind(c)
end subroutine
subroutine suba()
call sub()
end subroutine
end

subroutine test01()
use mod
call suba()
end 
