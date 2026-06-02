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
 type(y)::va(m),vb(m)
  class(z),allocatable::q
  class(*),allocatable::v(:)
  class(t),allocatable::w(:)
  type (t),allocatable::e(:)
    allocate(te::w(2))
    select type(w)
     type is(te)
       allocate(z::w(1)%name(2))
       allocate(z::w(2)%name(2))
    end select

    call ss
  allocate(e(1))
  allocate(e(2),   va(m)%v,v,vb(m)%v,mold=w,stat=nn)
     if (nn==0) print *,7652

end
end
use m1
do n=1,30
call s1(2)
end do
     print *,'sngg650s : pass'
     end
subroutine ss
  integer,allocatable::d(:)
  allocate(d(1000),source=-1)
  write(1,*) d
  deallocate(d)
end
