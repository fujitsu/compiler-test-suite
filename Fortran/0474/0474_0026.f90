module m1
integer,parameter::k=1000
type x
  complex,pointer::p(:)
  complex        ::n(k)
  complex,allocatable::a(:)
end type
type,extends(x):: y
  type(x),pointer::y1
  complex,pointer::y2(:)
  complex        ::y3(k)
  complex,allocatable::y4(:)
end type
type,extends(y)::z
  type(y),pointer::z1
  complex,pointer::z2(:)
  complex        ::z3(k)
  complex,allocatable::z4(:)
end type
  complex        ::h=(1,2)
end
module m2
use m1
contains

subroutine s_p

class(x),pointer::p
allocate(p)
allocate(p%p(k))
allocate(p%a(k))

p%p(:)=h
p%n(:)=h
p%a(:)=h

if (any(p%p(:)/=h)) print *,10001 
if (any(p%n(:)/=h)) print *,10001 
if (any(p%a(:)/=h)) print *,10001

end

subroutine s_a
use m1

class(x),allocatable::a
allocate(a)
allocate(a%p(k))
allocate(a%a(k))

a%p(:)=h
a%n(:)=h
a%a(:)=h

if (any(a%p(:)/=h)) print *,10001
if (any(a%n(:)/=h)) print *,10001
if (any(a%a(:)/=h)) print *,10001

end

subroutine s_n(n)
use m1

class(x)::n
allocate(n%p(k))
allocate(n%a(k))

n%p(:)=h
n%n(:)=h
n%a(:)=h

if (any(n%p(:)/=h)) print *,10001
if (any(n%n(:)/=h)) print *,10001
if (any(n%a(:)/=h)) print *,10001

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


