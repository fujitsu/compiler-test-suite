module mod1
type a
integer :: kk
type(c),pointer:: ip2=>null()
contains
  procedure,nopass::ap
end type
type,extends(a):: b
contains
  procedure,nopass::bp
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
  subroutine bp(k)
    k=2
  end subroutine
  subroutine ap(k)
    k=3
  end subroutine
end module
module m2
contains
subroutine s1(var,var2)
use mod1
type(c)::var
type(c),allocatable::var2
allocate(var2)

call var%cp(n)
if (n/=1) print *,1001
if (associated(var%ip2)) print *,1001
n=0
call var2%cp(n)
if (n/=1) print *,1002
if (associated(var2%ip2)) print *,1002

call var%ap(n)
if (n/=3) print *,1011
if (associated(var%ip2)) print *,1111
n=0
call var2%ap(n)
if (n/=3) print *,1012
if (associated(var2%ip2)) print *,1112

call var%bp(n)
if (n/=2) print *,1211
if (associated(var%ip2)) print *,2111
n=0
call var2%bp(n)
if (n/=2) print *,1212
if (associated(var2%ip2)) print *,2112
end
end
use m2
use mod1
type(c)::var
type(c),allocatable::var2
call       s1(var,var2)

call var%cp(n)
if (n/=1) print *,1001
if (associated(var%ip2)) print *,1001
n=0
call var2%cp(n)
if (n/=1) print *,1002
if (associated(var2%ip2)) print *,1002

call var%ap(n)
if (n/=3) print *,1011
if (associated(var%ip2)) print *,1111
n=0
call var2%ap(n)
if (n/=3) print *,1012
if (associated(var2%ip2)) print *,1112

call var%bp(n)
if (n/=2) print *,1211
if (associated(var%ip2)) print *,2111
n=0
call var2%bp(n)
if (n/=2) print *,1212
if (associated(var2%ip2)) print *,2112
print *,'pass'
end
