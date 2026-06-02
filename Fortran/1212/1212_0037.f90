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
     class(*),allocatable::r
  class(*)::w
     r=w
   k=0
    select type(w)
      type is(ee)
       if (w%e2/=111) print *,7819
      k=1
   end select
         if (k/=1) print *,42288
   k=0
    select type(r)
      type is(ee)
       if (r%e2/=111) print *,6819
      k=1
   end select
         if (k/=1) print *,62288
   end
subroutine s1(w)
     class(*),allocatable::name(:)
  class(*)::w
    select type(w)
      type is(ee)
    allocate(w%e2,source=111_8)
    write(19, '(z16.16)')loc(w%e2)
    end select
    allocate(ee::name(3))

       name=f(w)
   k=0
   select type(p=>name)
    type is(ee)
      if (p(1)  %e2/=111) print *,2829
      if (p(2)  %e2/=111) print *,2829
      if (p(3)  %e2/=111) print *,2829
    write(19, '(z16.16)')loc(p(1)%e2)
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
do n=1,30
allocate(ee::w)
call s1(w)
deallocate(w)
end do
     print *,'sngg274s : pass'
     end
