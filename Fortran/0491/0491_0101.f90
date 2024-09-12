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
type(x)::z=x(1)
allocate(y::v)
v= z
k=0
select type( v )
  type is( x )
   k=1
   if (v%x1/=1) print *,2101
end select
if (k/=1) print *,2103

deallocate(v)
v= z 
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