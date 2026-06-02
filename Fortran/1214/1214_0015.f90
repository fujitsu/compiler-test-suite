module m4
  type z
    integer(8)::z1
  end type
  type t
     integer(8)::du
     class(z),allocatable::n2
  end type
contains
subroutine s4
  class(z),allocatable::r
  class(z),allocatable::q
  type (t),allocatable::v,w
    allocate(   q,w)
    if (.not.allocated(q)) print *,32003 
    if (.not.allocated(w)) print *,32004 
    if (allocated(w%n2)) print *,32007
    allocate(w%n2)
    allocate(   r)
    if (.not.same_type_as(w%n2,r)) print *,32008
end
end
subroutine x4
use m4
do n=1,30
call ss()
call s4()
end do
end
call x4
     print *,'sngg433s : pass'
     end
subroutine ss
  integer,allocatable::d1(:)
  integer,allocatable::d2(:)
  integer,allocatable::d3(:)
  integer,allocatable::d4(:)
  integer,allocatable::d5(:)
  integer,allocatable::d6(:)
  allocate(d1(10),source=-1)
  allocate(d2(10),source=-1)
  allocate(d3(10),source=-1)
  allocate(d4(10),source=-1)
  allocate(d5(10),source=-1)
  allocate(d6(10),source=-1)
  write(16,*) d1,d2,d3,d4,d5,d6
end
