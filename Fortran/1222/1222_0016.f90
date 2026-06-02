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
     type(z),allocatable::na(:)
  end type
  type ,extends(t)::te
     integer(8)::dx
     type (z),allocatable::name(:)
  end type
contains
subroutine s1()
 !type(y)::va(m),vb(m)
 ! class(z),allocatable::q
  class(t),allocatable::e
  type (t),allocatable::v
  type (t),allocatable::w
    allocate(t::w)
       w%du=1

  allocate(t::e)
  allocate(e,  v,source=w,stat=nn)
   if (nn==0) print *,7652
end
end
use m1
call s1()
     print *,'sngg067t : pass'
     end
