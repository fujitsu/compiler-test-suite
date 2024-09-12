subroutine s1
type x1
  integer::x11=1
  integer::x2
end type
type,extends(x1):: x2
  integer::x21
end type
class (x1),pointer:: v2(:)
class (* ),pointer:: v1(:)
class (x1),pointer:: t
allocate(x2:: t)
allocate(x2::v2(2))
  if (any(v2%x11/=1)) print *,11
allocate(v2(2),mold=t)
allocate(v2(2))
  if (any(v2%x11/=1)) print *,12
allocate(v1(2),mold=t)
k=0
select type(v1)
 type is(x2)
  k=1
end select
if (k/=1) print *,901
end
call s1
print *,'pass'
end
