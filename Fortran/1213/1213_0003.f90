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
      k=1
   end select
         if (k/=1) print *,42288
   k=0
    select type(r)
      type is(ee)
       if (r%e1/=111) print *,6829
      k=1
   end select
         if (k/=1) print *,62288
   end
subroutine s1(w)
     class(e),allocatable::name
  class(e)::w
    select type(w)
      type is(ee)
    allocate(w%e1,source=111_8)
    end select

       name=f(w)
   k=0
   select type(p=>name)
    type is(ee)
      if (p     %e1/=111) print *,2829
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
allocate(ee::w)
call s1(w)
     print *,'sngg361s : pass'
     end
