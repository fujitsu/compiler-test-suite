module m1
  type z
    integer(8)::z1
  end type
  type t
     integer(8)::du
     class(z),allocatable::n2
  end type
  type ,extends(t)::te
     integer(8)::dx
     class(z),allocatable::name
  end type
  class(z),allocatable::q
  class(t),allocatable::v,w
contains
subroutine s1
    allocate(   v,mold=w)

    k=0
    select type(v)
     type is(te)
      if (allocated(v%n2)) print *,62829
      if (.not.same_type_as(q,v%n2)) print *,62828
      deallocate(v%n2,stat=n)
      if (n==0) print *,6282
      if (allocated(v%name)) print *,2829
      k=1
      if (.not.same_type_as(q,v%name)) print *,2828
      deallocate(v%name,stat=n)
      if (n==0) print *,282
    end select
    if (k/=1) print *,5255
end
end
use m1
    allocate(te::w)
    select type(w)
     type is(te)
       allocate(w%name)
       allocate(w%n2)
    end select

    call ss
call s1()
     print *,'sngg405s : pass'
     end
subroutine ss
  integer,allocatable::d(:)
  allocate(d(1000),source=-1)
  write(1,*) d
  deallocate(d)
end
