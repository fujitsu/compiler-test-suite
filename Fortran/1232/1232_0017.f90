module m1
type pt
  integer,pointer    ::p
end type
type at
  integer,allocatable::a
end type
  integer,allocatable,target:: a
  integer,pointer           :: p
  integer,target            :: t
   integer(8)::addr
contains
 subroutine set 
allocate(a,source=2)
allocate(p,source=2)
t=2
 end
 subroutine s1
  call dp( pt(a),1 )
  call dp( pt(p),2 )
  call dp( pt(t),3 )
addr=loc(a)
  call da( at(a),1 )
addr=loc(p)
  call da( at(p),2 )
addr=loc(t)
  call da( at(t),3 )
 end
 subroutine dp(x,k)
type(pt)::x
if (x%p/=2) print *,2001
select case(k)
 case(1)
   if (.not.associated(x%p,a)) print *,2010
 case(2)
   if (.not.associated(x%p,p)) print *,2011
 case(3)
   if (.not.associated(x%p,t)) print *,2012
end select
end
 subroutine da(x,k)
type(at)::x
if (x%a/=2) print *,2001
   if (addr==loc(x%a)) print *,3010,k
end
end
use m1
call set
  call s1
  print *,'sngg582t : pass'
end
