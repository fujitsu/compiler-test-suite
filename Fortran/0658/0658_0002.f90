print *,'pass'
call sub()
call sub1()
call sub2()
call sub3()
end
subroutine sub()
type ty1
 integer,allocatable :: a(:)
end type
type(ty1),pointer :: str => null()
if (associated(str))print *,'err'
end subroutine

subroutine sub1()
type ty1
 integer,allocatable :: a(:)
end type
call sub()
contains
subroutine sub()
type(ty1),pointer :: str => null()
if (associated(str))print *,'err'
end subroutine
end subroutine


module mod2
type ty1
 integer,allocatable :: a(:)
end type
contains
subroutine sub()
type(ty1),pointer :: str => null()
if (associated(str))print *,'err'
end subroutine
end
subroutine sub2()
use mod2
call sub()
end subroutine

module mod3
type ty1
 integer,allocatable :: a(:)
end type
type(ty1),pointer :: str => null()
contains
subroutine sub()
if (associated(str))print *,'err'
end subroutine
end
subroutine sub3()
use mod3
call sub()
end subroutine
