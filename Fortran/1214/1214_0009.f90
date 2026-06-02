module m4
  type z
    integer(8)::z1
  end type
  type t
     integer(8)::du
     class(z),allocatable::n2
  end type
  class(z),allocatable::q
  type (t),allocatable::v,w
contains
subroutine s4
  class(z),allocatable::r
    allocate(   q,w)
    if (.not.allocated(q)) print *,32003 
    if (.not.allocated(w)) print *,32004 
    if (allocated(w%n2)) print *,32007
    allocate(   r)
    if (.not.same_type_as(w%n2,r)) print *,32008
    allocate(w%n2)
    if (.not.allocated(w%n2)) print *,32017
end
end
subroutine x4
use m4
call ss()
call s4()
end
call x4
     print *,'sngg427s : pass'
     end
subroutine ss
  integer,allocatable::d(:)
  allocate(d(1000),source=-1)
  write(10,*) d
  deallocate(d)
end
