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
  function f(d) result(r)
  class(t),allocatable::d(:)
  class(t),allocatable::r(:)
  r=d
  end
subroutine s1(m)
  class(z),allocatable::q
  class(*),allocatable::v(:)
  class(t),allocatable::w(:)
    allocate(te::w(2))
    select type(w)
     type is(te)
       allocate(z::w(1)%name(2))
       allocate(z::w(2)%name(2))
    end select

    call ss

  v= f(w)

    k=0
    select type(v)
     type is(te)
      if (.not.allocated(v(1)%name)) print *,2829
      k=1
      if (.not.same_type_as(q,v(1)%name)) print *,2828
      deallocate(v(1)%name,stat=n)
      if (n/=0) print *,282
      if (.not.allocated(v(2)%name)) print *,2829
      if (.not.same_type_as(q,v(2)%name)) print *,2828
      deallocate(v(2)%name,stat=n)
      if (n/=0) print *,282
    end select
    if (k/=1) print *,5255
end
end
use m1
call s1(2)
     print *,'sngg671s : pass'
     end
subroutine ss
  integer,allocatable::d(:)
  allocate(d(1000),source=-1)
  write(8,*) d
  deallocate(d)
end
