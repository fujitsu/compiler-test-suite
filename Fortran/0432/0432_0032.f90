use mod
print *,'pass'
end

module mod
type ty0
 integer,allocatable :: aa
 integer :: arr(10)=1
end type
type(ty0) ::str
contains
subroutine sub()
end subroutine
end

