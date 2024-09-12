module mod
contains
subroutine test01()
call isub()
contains
subroutine isub()
end subroutine
end subroutine
end

use mod
call test01()
print *,'pass'
end
