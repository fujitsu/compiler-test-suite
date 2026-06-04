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
  class(e)::w(:)
    select type(w)
      type is(ee)
    allocate(w(1)%e2,source=111_8)
    allocate(w(2)%e2,source=112_8)
    allocate(w(3)%e2,source=113_8)
    write(26, '(z16.16)')loc(w(1)%e2)
    end select

       v%name=w(:)
   k=0
   select type(p=>v%name)
    type is(ee)
      if (p(1)  %e2/=111) print *,2829
  !  write(1, '(z16.16)')loc(p(1)%e2)
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
     print *,'sngg298s : pass'
     end
