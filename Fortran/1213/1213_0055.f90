module m4
  type z
    integer(8)::z1
  end type
  type t
     integer(8)::du
     class(z),allocatable::n2
  end type
  class(z),allocatable::q
  class(t),allocatable::v,w
contains
subroutine s4
  class(z),allocatable::r
    allocate(   w,q, stat=n)
    if (n/=0) print *,31001
    if (.not.allocated(q)) print *,32003 
    if (.not.allocated(w)) print *,32004 
    if (allocated(w%n2)) print *,32007
    if (.not.same_type_as(w%n2,r)) print *,32008
end
end
subroutine x4
use m4
call s4()
end
call x4
     print *,'sngg422s : pass'
     end
