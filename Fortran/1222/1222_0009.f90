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
 !type(y)::va(m),vb(m)
 ! class(z),allocatable::q
  class(t),allocatable::e(:)
  class(t),allocatable::v(:)
  class(t),allocatable::w(:)
    allocate(t::w(2))

  allocate(t::e(2))
  allocate(e(2),  v,mold=w,stat=nn)
  !allocate(e(2),  va(m)%v,v,vb(m)%v,mold=w,stat=nn)
  !allocate(e(2),  va(m)%v,v,vb(m)%v,mold=w)
   if (nn==0) print *,7652
   !if (allocated(va(m)%v)) print *,80001
   !if (allocated(v)) print *,80002
   !if (allocated(vb(m)%v)) print *,80003
end
end
use m1
!do n=1,30
call s1()
!end do
     print *,'sngg060t : pass'
     end
