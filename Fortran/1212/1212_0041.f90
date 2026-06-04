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
  type y
     integer(8)::du
     character(2)        ::name
  end type
contains
  function f(w) result(r)
   character(:),allocatable::r
   character(*)            ::w
     r=w
   end
subroutine s1()
     class(*),allocatable::name
     type(y)::v
     v%name=f('12')
       name=v
      v%name=f('34')
   k=0
   select type(p=>name)
    type is(y           )
      if (p%name/='12') print *,2829
      k=1
   end select
   if (k/=1) print *,2928
   end
end
use m1
do n=1,30
call s1()
end do
     print *,'sngg278s : pass'
     end
