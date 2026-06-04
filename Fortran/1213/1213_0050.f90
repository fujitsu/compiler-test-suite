module m1
  type z
    integer(8)::z1
  end type
  type t
     integer(8)::du
     class(z),allocatable::n2
  end type
  class(z),allocatable::q
  class(t),allocatable::v,w,y
contains
subroutine s1
  class(z),allocatable::r
    allocate( v)
    allocate(   v,y,w, stat=n)
    if (n==0) print *,1001
    if (.not.allocated(v)) print *,2002 
    if (allocated(y)) print *,2003 
    if (allocated(w)) print *,2004 
    if (allocated(v%n2)) print *,2005
    if (.not.same_type_as(v%n2,r)) print *,2006
if (n==0) print *,2005
end
end
module m2
  type z
    integer(8)::z1
  end type
  type t
     integer(8)::du
     class(z),allocatable::n2
  end type
  class(z),allocatable::q
  class(t),allocatable::v,w,y
contains
subroutine s2
  class(z),allocatable::r
    allocate( y)
    allocate(   v,y,w, stat=n)
    if (n==0) print *,11001
    if (.not.allocated(v)) print *,12002 
    if (.not.allocated(y)) print *,12003 
    if (allocated(w)) print *,12004 
    if (allocated(v%n2)) print *,12005
    if (.not.same_type_as(v%n2,r)) print *,12006
    if (allocated(y%n2)) print *,12007
    if (.not.same_type_as(y%n2,r)) print *,12008
end
end
module m3
  type z
    integer(8)::z1
  end type
  type t
     integer(8)::du
     class(z),allocatable::n2
  end type
  class(z),allocatable::q
  class(t),allocatable::v,w,y
contains
subroutine s3
  class(z),allocatable::r
    allocate( w)
    allocate(   v,y,w, stat=n)
    if (n==0) print *,21001
    if (.not.allocated(v)) print *,22002 
    if (.not.allocated(y)) print *,22003 
    if (.not.allocated(w)) print *,22004 
    if (allocated(v%n2)) print *,22005
    if (.not.same_type_as(v%n2,r)) print *,22006
    if (allocated(w%n2)) print *,22007
    if (.not.same_type_as(w%n2,r)) print *,22008
    if (allocated(y%n2)) print *,22009
    if (.not.same_type_as(y%n2,r)) print *,22010
end
end
module m4
  type z
    integer(8)::z1
  end type
  type t
     integer(8)::du
     class(z),allocatable::n2
  end type
  class(z),allocatable::q
  class(t),allocatable::v,w,y
contains
subroutine s4
  class(z),allocatable::r
    allocate(   v,y,w, stat=n)
    if (n/=0) print *,31001
    if (.not.allocated(v)) print *,32002 
    if (.not.allocated(y)) print *,32003 
    if (.not.allocated(w)) print *,32004 
    if (allocated(v%n2)) print *,32005
    if (.not.same_type_as(v%n2,r)) print *,32006
    if (allocated(w%n2)) print *,32007
    if (.not.same_type_as(w%n2,r)) print *,32008
    if (allocated(y%n2)) print *,32009
    if (.not.same_type_as(y%n2,r)) print *,32010
end
end
subroutine x1
use m1
call s1()
end
subroutine x2
use m2
call s2()
end
subroutine x3
use m3
call s3()
end
subroutine x4
use m4
call s4()
end
call ss
call x1
call ss
call x2
call ss
call x3
call ss
call x4
     print *,'sngg417s : pass'
     end
subroutine ss
  integer,allocatable::d(:)
  allocate(d(1000),source=-1)
  write(1,*) d
  deallocate(d)
end
