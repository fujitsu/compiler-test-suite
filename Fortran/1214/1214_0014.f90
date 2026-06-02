module m4
  type z
    integer(8)::z1
  end type
  type t
     integer(8)::du
     class(z),allocatable::n2(:)
  end type
  class(z),allocatable::q(:)
  type (t),allocatable::w
contains
subroutine s4
  class(z),allocatable::r
    allocate(   q(10),w)
    if (ubound(q,1)/=10) print *,2929
    do n=lbound(q,1),ubound(q,1)
      q(n)%z1=-2
    end do
    if (.not.allocated(q)) print *,32003 
    if (.not.allocated(w)) print *,32004 
    if (allocated(w%n2)) print *,32007
    if (.not.same_type_as(w%n2,r)) print *,32008
    if (.not.allocated(r)) then
      allocate(   r)
    end if
    allocate(w%n2(2))
    if (.not.allocated(w%n2)) print *,32017
    do n=lbound(q,1),ubound(q,1)
      if (q(n)%z1/=-2) print *,1022
    end do
    deallocate(   q,w)
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
     print *,'sngg432s : pass'
     end
subroutine ss
  integer,allocatable::d(:)
  allocate(d(100),source=-1)
  write(15,*) d
  deallocate(d)
end
