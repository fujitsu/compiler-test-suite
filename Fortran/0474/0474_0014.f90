module m1
type x
  integer,pointer::p(:)
  integer        ::n(2)
  integer,allocatable::a(:)
end type
type,extends(x):: y
  type(x),pointer::y1
  integer,pointer::y2(:)
  integer        ::y3(2)
  integer,allocatable::y4(:)
end type
type,extends(y)::z
  type(y),pointer::z1
  integer,pointer::z2(:)
  integer        ::z3(2)
  integer,allocatable::z4(:)
end type
end
module m2
use m1
contains

subroutine s_p

class(x),pointer::p
allocate(p)
allocate(p%p(2))
allocate(p%a(2))

p%p(1)=1
p%n(1)=1
p%a(1)=1

if (p%p(1)/=1) print *,10001 
if (p%n(1)/=1) print *,10001 
if (p%a(1)/=1) print *,10001

end

subroutine s_a
use m1

class(x),allocatable::a
allocate(a)
allocate(a%p(2))
allocate(a%a(2))

a%p(1)=1
a%n(1)=1
a%a(1)=1

if (a%p(1)/=1) print *,10001
if (a%n(1)/=1) print *,10001
if (a%a(1)/=1) print *,10001

end

subroutine s_n(n)
use m1

class(x)::n
allocate(n%p(2))
allocate(n%a(2))

n%p(1)=1
n%n(1)=1
n%a(1)=1

if (n%p(1)/=1) print *,10001
if (n%n(1)/=1) print *,10001
if (n%a(1)/=1) print *,10001

end
end
use m2
class(x),allocatable::n
allocate(n)
call  s_p()
call  s_a()
call  s_n(n)
print *,'pass'
end


