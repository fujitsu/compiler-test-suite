subroutine s1
type x
  integer:: x1
  integer,allocatable:: x2(:)
  integer:: x3
  integer,allocatable:: x4(:)
end type
type (x) :: v1(2),v2(2)
integer:: n(2)=[2,1]
allocate(v2(1)%x2(2),source=[1,2])
allocate(v2(2)%x4(2),source=[3,4])

v1=v2

if (any(v1(1)%x2/=[1,2])) print *,101
if (allocated(v1(1)%x4)) print *,102
if (allocated(v1(2)%x2)) print *,103
if (any(v1(2)%x4/=[3,4])) print *,104

deallocate(v1(1)%x2,v1(2)%x4)

v1=v2(n)

if (any(v1(2)%x2/=[1,2])) print *,201
if (allocated(v1(2)%x4)) print *,202
if (allocated(v1(1)%x2)) print *,203
if (any(v1(1)%x4/=[3,4])) print *,204
end
call s1
print *,'pass'
end
