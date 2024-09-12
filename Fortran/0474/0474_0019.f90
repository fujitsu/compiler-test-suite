module m1
type x
  integer,pointer::p(:)
  integer        ::n(2)
  integer,allocatable::a(:)
end type
end
module m2
use m1
contains

subroutine s_pt

type(x),pointer::p
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
subroutine s_pc

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

end
use m2
type(x)::n
call  s_pt()
call  s_pc()
print *,'pass'
end


