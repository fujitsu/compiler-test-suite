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
contains
  function f(w) result(r)
   character(2),allocatable::r
   character(*)            ::w
     r=w
   end
subroutine s1()
     class(*),allocatable::name

       name=f('12')
   k=0
   select type(p=>name)
    type is(character(*))
      if (p     /='12') print *,2829
      k=1
   end select
   if (k/=1) print *,2928
   end
end
use m1
call s1()
     print *,'sngg277s : pass'
     end
