module m1
  type x
    integer:: x1
  end type
  type,extends(x):: y
     integer:: y1
  end type
  class(x),allocatable:: v(:)
  type(x),allocatable:: xv(:)
  type(y),allocatable:: yv(:)
end
subroutine s1
use m1
allocate(yv(2:4))
allocate(xv(-2:-1))
yv= y( y1=2 , x1=1) 
v= yv
if (any(ubound(v)/=4)) print *,901, ubound(v)
if (any(lbound(v)/=2)) print *,911, lbound(v)
if (any(ubound(yv)/=4)) print *,921, ubound(yv)
if (any(lbound(yv)/=2)) print *,931, lbound(yv)
k=0
select type( v )
  type is( y )
   k=1
   if (v(4)%x1/=1) print *,1001
   if (v(4)%y1/=2) print *,1002
end select
if (k/=1) print *,1003
xv= x(  x1=1) 
v= xv
if (any(ubound(v)/=-1)) print *,902
k=0
select type( v )
  type is( x )
   k=1
   if (v(-1)%x1/=1) print *,2001
end select
if (k/=1) print *,2003
yv= y( y1=2 , x1=1) 
v= yv
if (any(ubound(v)/=4)) print *,903
k=0
select type( v )
  type is( y )
   k=1
   if (v(4)%x1/=1) print *,3001
   if (v(4)%y1/=2) print *,3002
end select
if (k/=1) print *,3003
end
call s1
print *,'pass'
end