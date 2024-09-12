module m1
  type x
    integer:: x1
  end type
  type,extends(x):: y
     integer:: y1
  end type
  class(x),allocatable:: v(:)
end
subroutine s1
use m1
type(x)::xs=x(1)
allocate(y::v(2:3))
v= xs 
k=0
select type( v )
  type is( x )
   k=1
   if (lbound(v,dim=1)/=2) print *,2102
   if (v(2)%x1/=1) print *,2101
   if (v(3)%x1/=1) print *,2111
end select
if (k/=1) print *,'Error',2103
deallocate(v)
allocate(v(2:3))
v= xs 
k=0
select type( v )
  type is( x )
   k=1
   if (lbound(v,dim=1)/=2) print *,3102
   if (v(2)%x1/=1) print *,3101
   if (v(3)%x1/=1) print *,3111
end select
if (k/=1) print *,'Error',3103
end
call s1
print *,'pass'
end
