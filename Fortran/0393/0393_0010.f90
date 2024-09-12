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
class (x1),pointer:: t(:,:,:)
allocate(x2:: t(2,3,4))
allocate(v1(2,3,4),mold=t)
select type(b=>v1)
 type is(x2)
  b%x11=1
end select
select type(a=>v1)
 type is(x2)
  if (any(a%x11/=1)) print *,1201,a%x11
end select
end
call s1
print *,'pass'
end
