module m1
type x
  integer,pointer::p(:)
  integer        ::n(2)
  integer,allocatable::a(:)
end type
type,extends(x):: y
  class(x),pointer::pp
  type(x)            ::nn
  class(x),allocatable::aa
end type
type,extends(y)::z
  type(y),pointer::z1
  type(y),allocatable::z2
end type
end
module m2
use m1
contains

subroutine s_p

type(y),pointer::p
allocate(p)
allocate(p%pp)
allocate(p%aa)
allocate(p%pp%p(2))
allocate(p%pp%a(2))
allocate(p%aa%p(2))
allocate(p%aa%a(2))
allocate(p%nn%p(2))
allocate(p%nn%a(2))

p%pp%p(1)=1
p%pp%n(1)=1
p%pp%a(1)=1

p%aa%p(1)=1
p%aa%n(1)=1
p%aa%a(1)=1

p%nn%p(1)=1
p%nn%n(1)=1
p%nn%a(1)=1

if (p%pp%p(1)/=1) print *,10001 
if (p%pp%n(1)/=1) print *,10001 
if (p%pp%a(1)/=1) print *,10001

if (p%aa%p(1)/=1) print *,10001 
if (p%aa%n(1)/=1) print *,10001 
if (p%aa%a(1)/=1) print *,10001

if (p%nn%p(1)/=1) print *,10001 
if (p%nn%n(1)/=1) print *,10001 
if (p%nn%a(1)/=1) print *,10001

end

subroutine s_a
use m1

type(y),allocatable::a
allocate(a)
allocate(a%pp)
allocate(a%aa)
allocate(a%pp%p(2))
allocate(a%pp%a(2))
allocate(a%aa%p(2))
allocate(a%aa%a(2))
allocate(a%nn%p(2))
allocate(a%nn%a(2))

a%pp%p(1)=1
a%pp%n(1)=1
a%pp%a(1)=1

a%aa%p(1)=1
a%aa%n(1)=1
a%aa%a(1)=1

a%nn%p(1)=1
a%nn%n(1)=1
a%nn%a(1)=1

if (a%pp%p(1)/=1) print *,10001 
if (a%pp%n(1)/=1) print *,10001 
if (a%pp%a(1)/=1) print *,10001

if (a%aa%p(1)/=1) print *,10001 
if (a%aa%n(1)/=1) print *,10001 
if (a%aa%a(1)/=1) print *,10001

if (a%nn%p(1)/=1) print *,10001 
if (a%nn%n(1)/=1) print *,10001 
if (a%nn%a(1)/=1) print *,10001

end

subroutine s_n(n)
use m1

type(y)::n

allocate(n%pp)
allocate(n%aa)
allocate(n%pp%p(2))
allocate(n%pp%a(2))
allocate(n%aa%p(2))
allocate(n%aa%a(2))
allocate(n%nn%p(2))
allocate(n%nn%a(2))

n%pp%p(1)=1
n%pp%n(1)=1
n%pp%a(1)=1

n%aa%p(1)=1
n%aa%n(1)=1
n%aa%a(1)=1

n%nn%p(1)=1
n%nn%n(1)=1
n%nn%a(1)=1

if (n%pp%p(1)/=1) print *,10001 
if (n%pp%n(1)/=1) print *,10001 
if (n%pp%a(1)/=1) print *,10001

if (n%aa%p(1)/=1) print *,10001 
if (n%aa%n(1)/=1) print *,10001 
if (n%aa%a(1)/=1) print *,10001

if (n%nn%p(1)/=1) print *,10001 
if (n%nn%n(1)/=1) print *,10001 
if (n%nn%a(1)/=1) print *,10001

end
end
use m2
type(y)::n
call  s_p()
call  s_a()
call  s_n(n)
print *,'pass'
end


