module m1
  type z
    integer(8)::z1
  end type
  type,extends(z)::ze
    integer(8)::z2
  end type
  type t
     integer(8)::du
     class(z),allocatable::n2
  end type
  class(z),allocatable::q
  integer::f=0
contains
subroutine s2(v)
  class(z),allocatable::v
if (f==0) then
    if (allocated(v)) print *,1002 
    if (allocated(q)) print *,1003 
    if (.not.same_type_as(v,q)) print *,1006
end if
if (f==1) then
    if (allocated(v)) print *,2002 
    if (.not.allocated(q)) print *,2003 
    if (.not.same_type_as(v,q)) print *,2006
end if
if (f==2) then
    if (allocated(v)) print *,3002 
    if (.not.allocated(q)) print *,3003 
    if (same_type_as(v,q)) print *,3006
end if
end
end
call ss1
call ss2
call ss3
call ss4
     print *,'sngg579t : pass'
end
subroutine ss1
use m1
  class(z),allocatable::v
call s2(v)
end
subroutine ss2
use m1
  class(z),allocatable::v
f=1
allocate(q)
call s2(v)
end
subroutine ss3
use m1
  class(z),allocatable::v
f=0
deallocate(q)
call s2(v)
end
subroutine ss4
use m1
  class(z),allocatable::v
f=2
allocate(ze::q)
call s2(v)
     end
