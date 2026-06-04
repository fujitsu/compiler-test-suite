module m4
  type z
    integer(8)::z1
  end type
  type t
     integer(8)::du
     class(z),allocatable::n2
  end type
  class(z),allocatable::q(:)
  type (t),allocatable::w(:)
contains
subroutine s4
  class(z),allocatable::r
    allocate(   q(10),w(10))
do n=1,10
    !print *,q(n)%z1
    !print *,w(n)%du
    if (.not.allocated(q)) print *,32003 
    if (.not.allocated(w)) print *,32004 
    if (allocated(w(n)%n2)) print *,32007
    if (.not.same_type_as(w(n)%n2,r)) print *,32008
    if (.not.allocated(r)) then
      allocate(   r)
    end if
    allocate(w(n)%n2)
    if (.not.allocated(w(n)%n2)) print *,32017
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
     print *,'sngg429s : pass'
     end
subroutine ss
  integer,allocatable::d(:)
  allocate(d(100),source=-1)
  write(12,*) d
  deallocate(d)
end
