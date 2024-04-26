module m1
type b
 integer::b1
end type
type,extends(b):: e
 integer::e1
end type
class(b),pointer::v(:)
contains
subroutine ss(d)
class(b)::d
k=0
select type(d)
  type is (b)
     k=1
  type is (e)
     k=2
end select
if (k/=1) print *,101
if (d%b1/=2) print *,1001
end subroutine
subroutine st(d)
class(b)::d
k=0
select type(d)
  type is (b)
     k=1
  type is (e)
     k=2
     if (d%e1/=112) print *,2001
end select
if (k/=2) print *,2101
if (d%b1/=12) print *,2001
end subroutine
end
subroutine s1
use m1
allocate(v(2))
v(1)%b1=1
v(2)%b1=2
call ss(v(2))
allocate(e::v(2))
v(1)%b1=11
v(2)%b1=12
select type(v)
  type is (e)
    v(1)%e1=111
    v(2)%e1=112
end select
call st(v(2))
end
call s1
print *,'pass'
end

