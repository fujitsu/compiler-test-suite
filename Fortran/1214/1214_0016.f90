module m4
  type z
    integer(8)::z1
  end type
  type t
     integer(8)::du
     class(z),allocatable::n2
  end type
  class(z),allocatable::q,x1,x2,x3,x4,x5
  type (t),allocatable::w
contains
subroutine s4
  class(z),allocatable::r
    allocate(   w,q,x1,x2,x3,x4,x5)
    if (.not.allocated(q)) print *,32003 
    if (.not.allocated(w)) print *,32004 
    if (allocated(w%n2)) print *,32007
    allocate(   r)
    if (.not.same_type_as(w%n2,r)) print *,32008
    if (.not.allocated(x1)) print *,3201 
    if (.not.same_type_as(x1,r)) print *,3301
    if (.not.same_type_as(x2,r)) print *,3302
    if (.not.same_type_as(x3,r)) print *,3303
    if (.not.same_type_as(x4,r)) print *,3304
    if (.not.same_type_as(x5,r)) print *,3305
end
end
subroutine x
use m4
call ss()
call s4()
end
call x
     print *,'sngg434s : pass'
     end
subroutine ss
  integer,allocatable::d(:)
  allocate(d(1000),source=-1)
  write(17,*) d
  deallocate(d)
end
