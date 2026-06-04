module m1
type bb
  integer,allocatable::r1(:)
end type
type,extends(bb):: ee
  integer,allocatable::r2(:)
end type

type b
  integer,allocatable::y1(:)
end type
type,extends(b):: e
  class(bb),allocatable::y2(:)
end type

type base
  integer,allocatable::x1(:)
end type
type,extends(base):: ext
  class(b),allocatable::x2(:)
end type

type z
  integer(8)::z1
  class(base),allocatable:: z2(:)
end type
contains
 subroutine s1(n)
   class(base),allocatable:: v(:)
   allocate(ext::v(n))
   select type(v)
    type is(ext)
  do j=1,n
   allocate(  v(j)%x1(2),source=1)
   allocate(e::v(j)%x2(2))
   select type(p=>v(j)%x2)
    type is(e)
     do m=1,2
     allocate(ee::p(m)%y2(2))
     select type(q=>p(m)%y2)
      type is(ee)
       allocate(q(1)%r1(2),source=1)
       allocate(q(2)%r1(2),source=1)
       allocate(q(1)%r2(2),source=2)
       allocate(q(2)%r2(2),source=2)
     end select
     end do
   end select
  end do
     end select
   call s2( z( 1 , v) )
  do j=1,n
   select type(v)
    type is(ext)
   select type(p=>v(j)%x2)
    type is(e)
     do m=1,2
     select type(q=>p(m)%y2)
      type is(ee)
       if (any(q(1)%r1/=1)) print *,4921
       if (any(q(1)%r2/=2)) print *,4922
       if (any(q(2)%r1/=1)) print *,8921
       if (any(q(2)%r2/=2)) print *,8922
     end select
     end do
   end select
   end select
  end do
  end
 subroutine s2(d)
  type(z):: d
  if (d%z1/=1) print *,1001
  k=0
  select type (w=>d%z2)
   type is(ext)   
     do n=1,2
     select type(p=>w(n)%x2)
      type is(e)
     do m=1,2
     select type(q=>p(m)%y2)
          type is(ee)
           k=1
       if (any(q(m)%r1/=1)) print *,8921
       if (any(q(m)%r2/=2)) print *,8922
           q(m)%r1=11
           q(m)%r2=12
        end select
     end do
      end select
     end do
   end select
   if (k/=1) print *,1001
 end
end
use m1
  do n=1,30
  call s1(2)
  end do
  print *,'sngg146s : pass'
end
