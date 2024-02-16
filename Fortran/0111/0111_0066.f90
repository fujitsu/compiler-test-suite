module mod
contains
subroutine test01()
type ty1
 integer,pointer :: ip(:)
end type
type(ty1) :: ii
integer,pointer :: tt(:)
allocate(tt(10))
call sub()
contains
subroutine sub()
ii%ip=>tt
ii%ip=100
tt=1
end subroutine
end subroutine
end

use mod
call test01()
call sub()
print *,"pass"
end

module mod2
contains
subroutine test01()
type ty1
 integer,pointer :: ip
end type
type(ty1) :: ii
integer,pointer :: tt
allocate(tt)
call sub()
contains
subroutine sub()
ii%ip=>tt
ii%ip=100
tt=1
end subroutine
end subroutine
end


subroutine sub()
use mod2
call test01()
end
