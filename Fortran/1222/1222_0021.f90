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
subroutine s1(m)
 type(y)::va(m),vb(m)
  class(z),allocatable::q
  class(*),allocatable::v(:)
  class(*),allocatable::e(:)
type ww
    integer(8)::z1
  class(t),allocatable::w(:)
end type
type(ww)::xt(m)
    allocate(te::xt(m)%w(2))
    select type(p=>xt(m)%w(2))
     type is(te)
       allocate(z::p   %name(2))
    end select

    call ss

  allocate(t::e(2))
  allocate(e(2),   va(m)%v,v,vb(m)%v,source=xt(m)%w,stat=nn)
   if (nn==0) print *,7652
   if (allocated(va(m)%v)) print *,80001
   if (allocated(v)) print *,80002
   if (allocated(vb(m)%v)) print *,80003

end
end
use m1
do n=1,30
call s1(2)
end do
     print *,'sngg072t : pass'
     end
subroutine ss
  integer,allocatable::d(:)
  allocate(d(1000),source=-1)
  write(4,*) d
  deallocate(d)
end
