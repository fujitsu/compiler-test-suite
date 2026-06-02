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
     class(*),allocatable::name(:)
 type z
     integer(8)::du
     class(e),allocatable::w
  end type
  type(z)::b
  class(e)::w
  b%w   =w
    select type(r=>b%w)
      type is(ee)
    allocate(r%e2,source=111_8)
    end select
    allocate(e::name(3))

       name=b%w
   k=0
   select type(p=>name)
    type is(ee)
      if (p(1)  %e2/=111) print *,2829
    write(28, '(z16.16)')loc(p(1)%e2)
      p(1)  %e2=221
      p(2)  %e2=222
      p(3)  %e2=223
      k=1
   end select
   if (k/=1) print *,1228
   k=0
    select type(r=>b%w)
      type is(ee)
       if (r%e2/=111) print *,3821
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
     print *,'sngg320s : pass'
     end
