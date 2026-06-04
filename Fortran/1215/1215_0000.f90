module m1
  type z
    integer(8)::z1
  end type
  type t
     integer(8)::du
     class(z),allocatable::n2
  end type
  class(z),allocatable::q
  interface
     module subroutine s2(v)
      class(z),allocatable::v
     end
  end interface
end
submodule (m1) smod
contains
module subroutine s2(v)
  class(z),allocatable::v
    if (allocated(v)) print *,1002 
    if (allocated(q)) print *,1003 
    if (.not.same_type_as(v,q)) print *,1006
end
end
use m1
  class(z),allocatable::v
call s2(v)
     print *,'sngg443s : pass'
     end
