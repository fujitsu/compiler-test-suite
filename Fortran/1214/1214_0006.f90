module m1
  type z
    integer(8)::z1
  end type
  type t
     integer(8)::du
     class(z),allocatable::n2
  end type
  class(z),allocatable::r,q
contains
subroutine s2
  class(t),allocatable::v
    allocate( v)
    if (.not.allocated(v)) print *,1002 
    if (allocated(v%n2)) print *,1005
    if (.not.same_type_as(v%n2,q)) print *,1006
allocate(q)
    if (.not.same_type_as(v%n2,q)) print *,1016
end
end
subroutine s1
use m1
  class(t),allocatable::v
    allocate( v)
    if (.not.allocated(v)) print *,2002 
    if (allocated(v%n2)) print *,2005
    if (.not.same_type_as(v%n2,r)) print *,2006
allocate(r)
    if (.not.same_type_as(v%n2,r)) print *,2016
end
use m1
call s2
call s1
     print *,'sngg415s : pass'
     end
