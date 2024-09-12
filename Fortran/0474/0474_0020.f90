module m1
type x
  integer,pointer::p
  integer        ::n
  integer,allocatable::a
end type
end
module m2
use m1
contains

subroutine s_pt

type(x),pointer::p(:)
allocate(p(2))
allocate(p(2)%p)
allocate(p(2)%a)

p(2)%p=1
p(2)%n=1
p(2)%a=1

if (p(2)%p/=1) print *,10001 
if (p(2)%n/=1) print *,10001 
if (p(2)%a/=1) print *,10001

end
subroutine s_pc

class(x),pointer::p(:)
allocate(p(2))
allocate(p(2)%p)
allocate(p(2)%a)

p(2)%p=1
p(2)%n=1
p(2)%a=1

if (p(2)%p/=1) print *,10001 
if (p(2)%n/=1) print *,10001 
if (p(2)%a/=1) print *,10001

end

end
use m2
call  s_pt()
call  s_pc()
print *,'pass'
end


