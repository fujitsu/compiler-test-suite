subroutine s1
type x
  integer:: x1
  integer:: x3
end type
type (x),allocatable :: v1(:),v2(:)
integer:: n(2)=[2,1]

allocate(v2(2))
v2(1)%x1=1
v2(1)%x3=2
v2(2)%x1=3
v2(2)%x3=4
v1=v2

if (any(v1%x1/=[1,3])) print *,101
if (any(v1%x3/=[2,4])) print *,104
deallocate(v1)

v1=v2(n)

if (any(v1%x1/=[3,1])) print *,201
if (any(v1%x3/=[4,2])) print *,204
end

call s1
print *,'pass'
end
