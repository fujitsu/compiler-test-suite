module m1
  type z
    integer(8)::z1
  end type
  type t
     integer(8)::du
     class(z),allocatable::n2
  end type
  type,extends(t)::te
     integer(8)::de
  end type

  class(z),allocatable::r
  class(z),allocatable::q
  class(t),allocatable::v,w,y
contains
subroutine s1
    allocate( v)
    allocate(te::   v, stat=n)
    if (n==0) print *,1001
    if (.not.allocated(v)) print *,2002 
    if (allocated(v%n2)) print *,2004 
    if (.not.same_type_as(v%n2,r)) print *,2006
    k=0
    select type(v)
      type is(t)
       k=1
    end select
    if (k/=1) print *,2007
    allocate(r)
    if (.not.same_type_as(v%n2,r)) print *,2016
end
end
use m1
call s1
     print *,'sngg408s : pass'
     end
subroutine ss
  integer,allocatable::d(:)
  allocate(d(1000),source=-1)
  write(3,*) d
  deallocate(d)
end
