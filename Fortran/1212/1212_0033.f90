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
     class(e),allocatable::r(:)
  class(e)::w(:)
     r=w
   k=0
    select type(w)
      type is(ee)
      ! if (w%e1/=111) print *,7829
       if (w(1)%e2/=111) print *,7819
       if (w(2)%e2/=112) print *,7819
       if (w(3)%e2/=113) print *,7819
      k=1
   end select
         if (k/=1) print *,42288
   k=0
    select type(r)
      type is(ee)
      ! if (r%e1/=111) print *,6829
       if (r(1)%e2/=111) print *,6819
       if (r(2)%e2/=112) print *,6819
       if (r(3)%e2/=113) print *,6819
      k=1
   end select
         if (k/=1) print *,62288
   end
subroutine s1(w)
     class(e),allocatable::name(:)
  class(e)::w(:)
    select type(w)
      type is(ee)
    allocate(w(1)%e2,source=111_8)
    allocate(w(2)%e2,source=112_8)
    allocate(w(3)%e2,source=113_8)
    write(15, '(z16.16)')loc(w(1)%e2)
    end select

       name=f(w)
   k=0
   select type(p=>name)
    type is(ee)
      if (p(1)  %e2/=111) print *,2829
    write(15, '(z16.16)')loc(p(1)%e2)
      p(1)  %e2=221
      p(2)  %e2=222
      p(3)  %e2=223
      k=1
   end select
   if (k/=1) print *,1228
   k=0
    select type(w)
      type is(ee)
       if (w(1)%e2/=111) print *,3821
       if (w(2)%e2/=112) print *,3822
       if (w(3)%e2/=113) print *,3823
      k=1
   end select
         if (k/=1) print *,12288
end
end
use m1
  class(e),allocatable::w(:)
do n=1,30
allocate(ee::w(3))
call s1(w)
deallocate(w)
end do
     print *,'sngg270s : pass'
     end
