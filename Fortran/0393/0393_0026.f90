subroutine s1
type x
 integer::x11
end type
type,extends(x):: y
 integer::y11
end type
type,extends(y):: z
 integer::z11
end type

class(x),contiguous,pointer::c(:)
class(x),contiguous,pointer::p(:)
allocate (z::c(2))
k=0
select type(c)
type is(z)
k=1
end select
if (k/=1) print *,605
p(1:2)=>c
k=0
select type(p)
type is(z)
k=1
end select
if (k/=1) print *,505
end
call s1
print *,'pass'
end
