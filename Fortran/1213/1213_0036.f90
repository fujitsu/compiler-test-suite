module m1
  type z
    integer(8)::z1
  end type
  type,extends(z)::e
     integer(8),allocatable::e1
 end type
  type t
     integer(8)::du
  end type
  type ,extends(t)::te
     integer(8)::dx
     class(z),allocatable::name
  end type
contains
subroutine s1()
  class (t),allocatable::w
  class (t),allocatable::v
 class(z),allocatable::q
  class(te),allocatable::qq
  type (te)::qx
  allocate(qq,source=qx)
  qq%dx=1
  allocate(w,source=qq)
k=0
    select type(w)
     type is(te)
       w%dx=1
       k=1
     if (allocated(w%name)) print *,2829
      k=1
      if (.not.same_type_as(q,w%name)) print *,2828
      deallocate(w%name,stat=n)
      if (n==0) print *,282
    end select
if (k/=1) print *,2020

  call ss
   allocate(   v,mold=w)

    k=0
    select type(v)
     type is(te)
      if (allocated(v%name)) print *,28291
      k=1
      if (.not.same_type_as(q,v%name)) print *,28281
      deallocate(v%name,stat=n)
      if (n==0) print *,282
    end select
    if (k/=1) print *,5255
end
end
use m1
  call ss
call s1()
     print *,'sngg394s : pass'
     end
subroutine ss
  integer,allocatable::d(:)
  allocate(d(1000),source=-1)
  write(1,*) d
  deallocate(d)
end
