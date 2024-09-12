subroutine s1(n1,n2,n3)
type x
 integer::x11
end type
type,extends(x):: y
 integer::y11
end type
type,extends(y):: z
 integer::z11
end type
class(x),pointer:: c1(:,:),c3(:,:,:)
contiguous::c3
allocate (z::c3(2,2,3))

allocate( c1  , mold=f(c3(n1:2,2,n2-1:n3) ))

if (any(ubound(c1)/=[2,3])) print *,101 
k=0
select type(c1)
type is(z)
k=1
c1%z11=1
end select
if (k/=1) print *,201
call ss1(c1)
contains
function f(c) result(r)
class(x),contiguous,target::c(:,:)
class(x),contiguous,pointer::r(:,:)
k=0
select type(c)
type is(z)
k=1
end select
if (k/=1) print *,605
r(1:2,1:3)=>c
k=0
select type(r)
type is(z)
k=1
end select
if (k/=1) print *,505
end function
subroutine ss1(c)
class(x)::c(:,:)
k=0
select type(c)
type is(z)
k=1
if(any(c%z11/=1)) print *,301
end select
if (k/=1) print *,205
end subroutine
end
call s1(1,2,3)
print *,'pass'
end
