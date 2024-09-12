subroutine s1
type x1
  integer::x11=1
  integer::x2
end type
type,extends(x1):: x2
  integer::x21
  integer::x22=2
end type
class (*),pointer:: v1(:,:,:)
class (x1),pointer:: v2(:,:,:)
class (x1),pointer:: t(:,:,:)
allocate(x2:: t(2,3,4))
k=0
select type(a=>t)
 type is(x2)
  if (any(t%x11/=1)) print *,101
  if (any(a%x22/=2)) print *,102
  k=1
end select
if (k/=1) print *,103

allocate(v2(2,3,4),mold=t)
v2%x11=1
k=0
select type(a=>v2)
 type is(x2)
  if (any(v2%x11/=1)) print *,201
  k=1
end select
select type(a=>v2)
 type is(x2)
  v2(2,3,:)%x2=3
  if (any(v2%x11/=1)) print *,201
  if (v2(2,3,1)%x2/=3) print *,301
  if (v2(2,3,2)%x2/=3) print *,301
  if (v2(2,3,3)%x2/=3) print *,301
  if (v2(2,3,4)%x2/=3) print *,301
  k=1
end select
if (k/=1) print *,204

allocate(v1(2,3,4),mold=t)
k=0
select type(a=>v1)
 type is(x2)
  a%x11=1
  if (any(a%x11/=1)) print *,1201
  k=1
end select
select type(a=>v1)
 type is(x2)
  a(2,3,:)%x2=3
  if (any(v2%x11/=1)) print *,2201
  if (a(2,3,1)%x2/=3) print *,2301
  if (a(2,3,2)%x2/=3) print *,3301
  if (a(2,3,3)%x2/=3) print *,4301
  if (a(2,3,4)%x2/=3) print *,5301
  k=1
end select
if (k/=1) print *,6204
end
call s1
print *,'pass'
end



  
