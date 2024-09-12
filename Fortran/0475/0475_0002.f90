module m1
integer,parameter::k=1000
type x
  integer,pointer::p(:)
  integer        ::n(k)
  integer,allocatable::a(:)
end type
type,extends(x):: y
  type(x),pointer::y1
  integer,pointer::pp(:)
  integer        ::nn(k)
  integer,allocatable::aa(:)
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
allocate(y::p)
kk=0
select type (p)
 class is(y)
    
    p%nn(:)=1
kk=1
end select
if (kk/=1) print *,901
   
end

end
use m2
call  s_p()
print *,'pass'
end


