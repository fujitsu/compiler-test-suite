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
     class(*),allocatable::na
     type(t)::v(2)
   allocate(e::v(2)%name)
   select type(p=>v(2)%name)
     type is(e)
       p%z1=1
     allocate(p%e1,source=11_8)
   end select
       na=v(2)
   select type(p=>v(2)%name)
     type is(e)
       p%z1=2
       p%e1=22
   end select
   k=0
   select type(p=>na)
    type is(t           )
      select type(q=>p%name)
         type is(e)
           if (q%z1/=1) print *,2829
           if (q%e1/=11) print *,4829
           k=1
      end select
   end select
   if (k/=1) print *,2928
   end
end
use m1
do n=1,30
call s1()
end do
     print *,'sngg309s : pass'
     end
