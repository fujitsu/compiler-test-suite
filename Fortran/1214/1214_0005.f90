module m4
  type z
    integer(8)::z1
  end type
  type t
     integer(8)::du
     class(z),allocatable::n2
  end type
  class(z),allocatable::r
  class(t),allocatable::v,y
contains
subroutine s4
    allocate(   v,y)
    if (allocated(r)) print *,32001 
    if (.not.allocated(v)) print *,32002 
    if (.not.allocated(y)) print *,32003 
    if (allocated(v%n2)) print *,32005
    if (.not.same_type_as(v%n2,r)) print *,32006
    if (allocated(y%n2)) print *,32009
    if (.not.same_type_as(y%n2,r)) print *,32010
end
end
subroutine x4
use m4
call s4()
end
call ss
call x4
     print *,'sngg412s : pass'
     end
subroutine ss
  integer,allocatable::d(:)
  allocate(d(1000),source=-1)
  write(8,*) d
  deallocate(d)
end
