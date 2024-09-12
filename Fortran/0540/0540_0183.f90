module mod1
type a
integer :: kk
type(c),pointer:: ip2=>null()
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
module m2
contains
subroutine s1
use mod1
type(c)::var
type(c),allocatable::var2
call var%cp(n)
if (n/=1) print *,1001
if (associated(var%ip2)) print *,1001
allocate(var2)
n=0
call var2%cp(n)
if (n/=1) print *,1001
if (associated(var2%ip2)) print *,1002
end
end
module ggg
contains
subroutine sub(var,var2)
use m2
use mod1
type(c)::var
type(c),allocatable::var2
end
end
use ggg
use m2
use mod1
type(c)::var
type(c),allocatable::var2
call var%cp(n)
if (n/=1) print *,1001
if (associated(var%ip2)) print *,1001
allocate(var2)
n=0
call var2%cp(n)
if (n/=1) print *,1001
if (associated(var2%ip2)) print *,1002
call s1
print *,'pass'
end
