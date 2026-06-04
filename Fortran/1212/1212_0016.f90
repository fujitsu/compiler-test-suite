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
subroutine s1(w)
 type t
     integer(8)::du
     class(e),allocatable::name(:)
  end type
    type(t)::v
  class(e)::w
    select type(w)
      type is(ee)
    allocate(w%e2,source=111_8)
    write(10, '(z16.16)')loc(w%e2)
    end select
    allocate(v%name(3))

       v%name=w
   k=0
   select type(p=>v%name)
    type is(ee)
      if (p(1)  %e2/=111) print *,2829
    write(10, '(z16.16)')loc(p(1)%e2)
      p(1)  %e2=221
      p(2)  %e2=222
      p(3)  %e2=223
      k=1
   end select
   if (k/=1) print *,1228
   k=0
    select type(w)
      type is(ee)
       if (w%e2/=111) print *,3821
      k=1
   end select
         if (k/=1) print *,12288
end
end
use m1
  class(e),allocatable::w
allocate(ee::w)
call s1(w)
     print *,'sngg253s : pass'
     end
