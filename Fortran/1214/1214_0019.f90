module m4
  type z
    integer(8)::z1
  end type
  type t
     integer(8)::du
     class(z),allocatable::n2
  end type
  class(z),allocatable::q,y1,y2,y3
  class (t),allocatable::w,x1,x2,x3
contains
subroutine s4
  class(z),allocatable::r
    allocate(   q,w,y1,x1,y2,x2,y3,x3)
    if (.not.allocated(q)) print *,32003 
    if (.not.allocated(y1)) print *,36001 
    if (.not.allocated(y2)) print *,36002 
    if (.not.allocated(y3)) print *,36003 
    if (.not.allocated(w)) print *,32004 
    if (allocated(w%n2)) print *,32007
    if (.not.allocated(x1)) print *,321
    if (allocated(x1%n2)) print *,322
    if (.not.allocated(x1)) print *,331
    if (allocated(x1%n2)) print *,332
    if (.not.allocated(x1)) print *,341
    if (allocated(x1%n2)) print *,342
    allocate(   r)
    if (.not.same_type_as(w%n2,r)) print *,32008
    if (.not.same_type_as(x1%n2,r)) print *,423
    if (.not.same_type_as(x2%n2,r)) print *,424
    if (.not.same_type_as(x3%n2,r)) print *,425
end
end
subroutine x4
use m4
call ss()
call s4()
end
call x4
     print *,'sngg437s : pass'
     end
subroutine ss
  integer,allocatable::d(:)
  allocate(d(1000),source=-1)
  write(20,*) d
  deallocate(d)
end
