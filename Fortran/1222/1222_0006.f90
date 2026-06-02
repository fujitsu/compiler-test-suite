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
  class(*),allocatable::e(:)
  class(*),allocatable::v(:)
  class(t),allocatable::w(:)
    allocate(te::w(2))
    select type(w)
     type is(te)
       allocate(z::w(1)%name(2))
       allocate(z::w(2)%name(2))
    end select

  allocate(t::e(2))
  allocate(te::e(2),  v(2),stat=nn)
end
end
use m1
!do n=1,30
call s1()
!end do
     print *,'sngg057t : pass'
     end
