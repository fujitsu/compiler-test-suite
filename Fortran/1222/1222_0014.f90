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
     class(z),allocatable::na(:)
  end type
  type ,extends(t)::te
     integer(8)::dx
     class(z),allocatable::name(:)
  end type
contains
subroutine s1()
  class(t),allocatable::e
  type (t),allocatable::v
  class(t),allocatable::w
    allocate(t::w)
      w%du=1

  allocate(t::e)
  allocate(e,  v,mold  =w,stat=nn)
   if (nn==0) print *,7652
end
end
use m1
call s1()
     print *,'sngg065t : pass'
     end
