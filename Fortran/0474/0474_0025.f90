module m1
integer,parameter::k=1000
type x
  integer,pointer::p(:)
  integer        ::n(k)
  integer,allocatable::a(:)
end type
type,extends(x):: y
  type(x),pointer::y1
  integer,pointer::y2(:)
  integer        ::y3(k)
  integer,allocatable::y4(:)
end type
type,extends(y)::z
  type(y),pointer::z1
  integer,pointer::z2(:)
  integer        ::z3(k)
  integer,allocatable::z4(:)
end type
end
module m2
use m1
contains

subroutine s_p

class(x),pointer::p
allocate(p)
allocate(p%p(k))
allocate(p%a(k))

p%p(:)=1
p%n(:)=1
p%a(:)=1

if (any(p%p(:)/=1)) print *,10001 
if (any(p%n(:)/=1)) print *,10001 
if (any(p%a(:)/=1)) print *,10001

end

subroutine s_a
use m1

class(x),allocatable::a
allocate(a)
allocate(a%p(k))
allocate(a%a(k))

a%p(:)=1
a%n(:)=1
a%a(:)=1

if (any(a%p(:)/=1)) print *,10001
if (any(a%n(:)/=1)) print *,10001
if (any(a%a(:)/=1)) print *,10001

end

subroutine s_n(n)
use m1

class(x)::n
allocate(n%p(k))
allocate(n%a(k))

n%p(:)=1
n%n(:)=1
n%a(:)=1

if (any(n%p(:)/=1)) print *,10001
if (any(n%n(:)/=1)) print *,10001
if (any(n%a(:)/=1)) print *,10001

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


