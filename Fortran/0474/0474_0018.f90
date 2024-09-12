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

type(x),allocatable::a
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
subroutine s_pc

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

end
use m2
type(x)::n
call  s_pt()
call  s_pc()
print *,'pass'
end


