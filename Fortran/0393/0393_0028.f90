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
allocate (z::c(6))
call ss(c)
contains
subroutine ss(c)
class(x),contiguous,target::c(:)
class(x),contiguous,pointer::p(:,:)
k=0
select type(c)
type is(z)
k=1
c%z11=2
end select
if (k/=1) print *,605
p(1:2,1:3)=>c
k=0
select type(p)
type is(z)
if (any(p%z11/=2)) print *,801
k=1
end select
if (k/=1) print *,505
end subroutine
end
call s1
print *,'pass'
end
