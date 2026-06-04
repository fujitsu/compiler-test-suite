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
     character(2),allocatable::name
  end type
contains
subroutine s1()
     class(*),allocatable::name
     type(y)::v
allocate(v%name,source='12')
       name=v
      v%name='34'
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
call s1()
     print *,'sngg262s : pass'
     end
