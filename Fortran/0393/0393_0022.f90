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
class(x),pointer:: c1(:,:),c2(:,:),c3(:,:,:),c4(:,:),c5(:,:)
allocate (z::c3(2,2,3))

allocate( c1(2,9), c4(2,9) , c5(2,9))
allocate( c1 , c2(3,4) , c4, c5 , mold=c3(n1:2,2,n2-1:n3) )

if (any(ubound(c1)/=[2,3])) print *,101 
if (any(ubound(c2)/=[3,4])) print *,102 
if (any(ubound(c3)/=[2,2,3])) print *,103 
if (any(ubound(c4)/=[2,3])) print *,104 
if (any(ubound(c5)/=[2,3])) print *,105 
k=0
select type(c1)
type is(z)
k=1
c1%z11=1
end select
if (k/=1) print *,201
k=0
select type(c2)
type is(z)
k=1
c2%z11=1
end select
if (k/=1) print *,202
k=0
select type(c3)
type is(z)
k=1
c3%z11=1
end select
if (k/=1) print *,203
k=0
select type(c4)
type is(z)
k=1
c4%z11=1
end select
if (k/=1) print *,204
k=0
select type(c5)
type is(z)
k=1
c5%z11=1
end select
if (k/=1) print *,205
call ss1(c1)
call ss1(c2)
call ss2(c3)
call ss1(c4)
call ss1(c5)
contains
subroutine ss2(c)
class(x)::c(:,:,:)
k=0
select type(c)
type is(z)
k=1
if(any(c%z11/=1)) print *,301
end select
if (k/=1) print *,205
end subroutine
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
