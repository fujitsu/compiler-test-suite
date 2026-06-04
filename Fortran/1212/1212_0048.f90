module m1
  type z
    integer(8)::z1
  end type
  type,extends(z)::e
     integer(8),allocatable::e1
 end type
  type,extends(e)::ee
     integer(8),allocatable::e2
 end type
  type t
     integer(8)::du
     class(*),allocatable::name
  end type
contains
subroutine s1(w)
  !type(t)::v
     class(*),allocatable::name
  class(*)::w(:)
n=2
    select type(w)
      type is(ee)
    allocate(w(n)%e1,source=111_8)
    !print '(z16.16)',loc(w%e1)
    end select

       name=w(n)
   k=0
   select type(p=>name)
    type is(ee)
      if (p     %e1/=111) print *,2829
    !print '(z16.16)',loc(p%e1)
      p     %e1=222
      k=1
   end select
   if (k/=1) print *,1228
   k=0
    select type(w)
      type is(ee)
       if (w(n)%e1/=111) then
            print *,3829
       end if
      k=1
   end select
         if (k/=1) print *,12288
end
end
use m1
  class(*),allocatable::w(:)
do n=1,30
allocate(ee::w(2))
call s1(w)
deallocate(w)
end do
     print *,'sngg286s : pass'
     end
