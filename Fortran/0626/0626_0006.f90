module mod1
type a
integer :: kk
type(c),pointer:: ip2
end type
type,extends(a):: b
end type
type,extends(b):: c
end type
end module
use mod1
print *,'pass'
end
