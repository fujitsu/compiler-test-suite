module m1
type bb
  integer::r1
end type
type,extends(bb):: ee
  integer,allocatable::r2
end type

type b
  integer::y1
end type
type,extends(b):: e
  class(bb),allocatable::y2
  class(bb),allocatable::y2d
end type

type base
  integer(8)::x1
end type
type,extends(base):: ext
  class(b),allocatable::x2
  class(b),allocatable::x2d
end type

type z
  integer(8)::z1
  class(ext ),allocatable:: z2d
  class(ext ),allocatable:: z2
end type
contains
 subroutine s1
  type(ext):: v
  type(z):: d
   v%x1=1
   allocate(e::v%x2)
   select type(p=>v%x2)
    type is(e)
     allocate(ee::p%y2)
     select type(q=>p%y2)
      type is(ee)
       q%r1=1
       allocate(q%r2,source=2)
     end select
   end select
   d=       z( 1 , NULL(),v) 
   call s2( d                )
   select type(p=>v%x2)
    type is(e)
     select type(q=>p%y2)
      type is(ee)
       if (q%r1/=1) print *,8921
       if (q%r2/=2) print *,8922
     end select
   end select
  end
 subroutine s2(d)
  type(z):: d
  if (d%z1/=1) print *,1001
  k=0
  select type (w=>d%z2)
   type is(ext)   
     select type(p=>w%x2)
      type is(e)
        select type(q=>p%y2)
          type is(ee)
           k=1
           if (q%r1/=1) print *,7921
           if (q%r2/=2) print *,7922
           q%r1=11
           q%r2=12
        end select
      end select
   end select
   if (k/=1) print *,1001
 end
end
use m1
  do n=1,30
  call s1
  end do
  print *,'sngg222s : pass'
end
