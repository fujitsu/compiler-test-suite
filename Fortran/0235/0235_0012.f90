module mod1
type a
integer :: kk
type(c),pointer:: ip2
end type
type,extends(a):: b
end type
type,extends(b):: c
 integer::cc
contains
  procedure,nopass::cp
end type
contains
  subroutine cp(k)
    k=1
  end subroutine
end module
use mod1
type(c)::var
call var%cp(n)
if (n/=1) print *,1001
print *,'pass'
end
