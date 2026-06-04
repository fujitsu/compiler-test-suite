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
  allocate(te::w)
k=0
    select type(w)
     type is(te)
       w%dx=1
     if (allocated(w%name)) print *,2829
     ! if (.not.same_type_as(q,w%name)) print *,2828
      deallocate(w%name,stat=n)
      if (n==0) print *,282
k=1
    end select
if (k/=1) print *,2020
end
end
use m1
call s1()
     print *,'sngg398s : pass'
     end
