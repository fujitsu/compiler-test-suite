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
     class(e),allocatable::name(:)
  class(e)::w(:)
  type z
     integer(8)::du
     class(e),allocatable::w(:)
  end type
  type(z)::b
  b%w   =w
    select type(r=>b%w)
      type is(ee)
    allocate(r(1)%e2,source=111_8)
    allocate(r(2)%e2,source=112_8)
    allocate(r(3)%e2,source=113_8)
    end select

       name=b%w
   k=0
   select type(p=>name)
    type is(ee)
      if (p(1)  %e2/=111) print *,2829
      p(1)  %e2=221
      p(2)  %e2=222
      p(3)  %e2=223
      k=1
   end select
   if (k/=1) print *,1228
   k=0
    select type(r=>b%w)
      type is(ee)
       if (  r(1)%e2/=111) print *,3821
       if (  r(2)%e2/=112) print *,3822
       if (  r(3)%e2/=113) print *,3823
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
     print *,'sngg317s : pass'
     end
