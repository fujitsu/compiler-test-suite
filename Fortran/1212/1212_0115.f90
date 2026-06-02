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
     class(*),allocatable::name(:)
  end type
   type u
     integer(8)::du
     class(*),allocatable::w(:)
   end type
   type(u)::b
 type(t)::v
  class(*)::w(:)
    select type(w)
      type is(ee)
    allocate(w(2)%e2,source=111_8)
    end select
    allocate(e::v%name(3))
    b%w=w(:)

       v%name=b%w(2)
   k=0
   select type(p=>v%name)
    type is(ee)
      if (p(1)  %e2/=111) print *,2829
    write(39, '(z16.16)')loc(p(1)%e2)
      p(1)  %e2=221
      p(2)  %e2=222
      p(3)  %e2=223
      k=1
   end select
   if (k/=1) print *,1228
   k=0
    select type(w)
      type is(ee)
       if (w(2)%e2/=111) print *,3821
      k=1
   end select
         if (k/=1) print *,12288
end
end
use m1
  class(e),allocatable::w(:)
do n=1,30
allocate(ee::w(2))
call s1(w)
deallocate(w)
end do
     print *,'sngg355s : pass'
     end
