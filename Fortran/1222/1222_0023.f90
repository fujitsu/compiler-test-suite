module m1
type y
     integer(8)::dx
  class(t),allocatable::v(:)
 end type
  type z
    integer(8)::z1
  end type
  type t
     integer(8)::du
  end type
  type ,extends(t)::te
     integer(8)::dx
     class(z),allocatable::name(:)
  end type
contains
subroutine s1(m)
  class(z),allocatable::q
  class(*),allocatable::e(:)
  class(*),allocatable::v(:)
  class(t),allocatable::w(:)
    allocate(te::w(2))


  allocate(t::e(2))
  allocate(   e(2),v,source=w,stat=nn)
   if (nn==0) print *,7652
end
end
use m1
call s1(2)
     print *,'sngg074t : pass'
     end
subroutine ss
  integer,allocatable::d(:)
  allocate(d(1000),source=-1)
  write(8,*) d
  deallocate(d)
end
