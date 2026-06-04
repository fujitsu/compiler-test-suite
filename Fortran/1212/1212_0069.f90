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
   allocate(z::v(2)%name)
   select type(p=>v(2)%name)
     type is(z)
       p%z1=1
   end select
       na=v(2)
   select type(p=>v(2)%name)
     type is(z)
       p%z1=2
   end select
   k=0
   select type(p=>na)
    type is(t           )
      select type(q=>p%name)
         type is(z)
           if (q%z1/=1) print *,2829
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
     print *,'sngg308s : pass'
     end
