module mod
contains
subroutine sub(a)
optional::a
call sub1(a)
end subroutine
subroutine sub1(a)
optional::a
a=0
end subroutine
end
use mod
call sub( )
end
