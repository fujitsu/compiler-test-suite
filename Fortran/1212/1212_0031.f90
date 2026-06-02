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
contains
   function f(w) result(r)
     class(e),allocatable::r
  class(e)::w
     r=w
   k=0
    select type(w)
      type is(ee)
       if (w%e1/=111) print *,7829
     !  if (w%e2/=112) print *,7819
      k=1
   end select
         if (k/=1) print *,42288
   k=0
    select type(r)
      type is(ee)
       if (r%e1/=111) print *,6829
    !   if (r%e2/=112) print *,6819
      k=1
   end select
         if (k/=1) print *,62288
   end
subroutine s1(w)
     class(*),allocatable::name
  class(e)::w
    select type(w)
      type is(ee)
    allocate(w%e1,source=111_8)
    !print '(z16.16)',loc(w%e1)
    end select

       name=f(w)
   k=0
   select type(p=>name)
    type is(ee)
      if (p     %e1/=111) print *,2829
   ! print '(z16.16)',loc(p%e1)
      p     %e1=222
      k=1
   end select
   if (k/=1) print *,1228
   k=0
    select type(w)
      type is(ee)
       if (w%e1/=111) then
            print *,3829
       end if
      k=1
   end select
         if (k/=1) print *,12288
end
end
use m1
  class(e),allocatable::w
do n=1,30
allocate(ee::w)
call s1(w)
deallocate(w)
end do
     print *,'sngg268s : pass'
     end
