subroutine s1
type x
  integer::x1
end type
type,extends(x):: y
  integer::y1
end type
class(y),pointer:: p(:),u
allocate(y::u)
allocate(y::p(3))
k=0
select type(p)
type is(y)
p%y1=-1
k=1
end select
if (k/=1) print *,1
k=0
select type(p)
type is(y)
if (any(p%y1/=-1)) print *,2
k=1
end select
deallocate(p)
allocate(p(3),mold=u)
select type(p)
type is(y)
if (any(p%y1/=0)) print *,3,'confirmation'
k=1
end select
if (k/=1) print *,11
end
call s1
print *,'pass'
end
