module m1
  type x
    integer:: x1
  end type
  type,extends(x):: y
     integer:: y1
  end type
  class(x),allocatable:: v
end
subroutine s1
use m1
v= y( y1=2 , x1=1) 
k=0
select type( v )
  type is( y )
   k=1
   if (v%x1/=1) print *,1001
   if (v%y1/=2) print *,1002
end select
if (k/=1) print *,1003
v= x(  x1=1) 
k=0
select type( v )
  type is( x )
   k=1
   if (v%x1/=1) print *,2001
end select
if (k/=1) print *,2003
v= y( y1=2 , x1=1) 
k=0
select type( v )
  type is( y )
   k=1
   if (v%x1/=1) print *,3001
   if (v%y1/=2) print *,3002
end select
if (k/=1) print *,3003
end
call s1
print *,'pass'
end
