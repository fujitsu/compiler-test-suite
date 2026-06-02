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
subroutine s1()
     class(*),allocatable::na
     class(*),allocatable::name
   allocate(ee::name)
   select type(p=>name)
     type is(ee)
       p%z1=1
     allocate(p%e1,source=11_8)
     allocate(p%e2,source=111_8)
   end select
       na=name
   select type(p=>name)
     type is(ee)
       p%z1=2
       p%e1=22
       p%e2=222
   end select
   k=0
      select type(q=>na)
         type is(ee)
           if (q%z1/=1) print *,2829
           if (q%e1/=11) print *,4829
           if (q%e2/=111) print *,5829
           k=1
      end select
   if (k/=1) print *,2928
   end
end
use m1
do n=1,30
call s1()
end do
     print *,'sngg267s : pass'
     end
