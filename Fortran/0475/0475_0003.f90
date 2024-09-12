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

type(y),pointer::p
allocate(y::p)
    p%nn(:)=1
   
end

end
use m2
call  s_p()
print *,'pass'
end


