module m1
  type x
    integer:: x1
  end type
  type,extends(x):: y
     integer:: y1
  end type
  class(x),allocatable:: v,a(:)
end
subroutine s1
use m1
type(x)::xs=x(1)

allocate(y::v)
v= x(  x1=1) 
k=0
select type( v )
  type is( x )
   k=1
   if (v%x1/=1) print *,2101
end select
if (k/=1) print *,'Error',2103

allocate(y::a(2:3))
a= xs
k=0
select type( a )
  type is( x )
   k=1
   if (lbound(a,dim=1)/=2) print *,4102
   if (a(2)%x1/=1) print *,4101
   if (a(3)%x1/=1) print *,4111
end select
if (k/=1) print *,'Error',4103

deallocate(v)
v= x(  x1=1) 
k=0
select type( v )
  type is( x )
   k=1
   if (v%x1/=1) print *,2001
end select
if (k/=1) print *,2003

end
call s1
print *,'pass'
end
