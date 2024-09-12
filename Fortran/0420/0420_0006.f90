subroutine s1
type y
  integer:: y1
end type
type(y),allocatable:: v1(:),v2(:)

if (allocated(v1)) print *,101
if (allocated(v2)) print *,102

allocate(v2(2))
if (allocated(v1)) print *,103
if (.not.allocated(v2)) print *,104
v2%y1=[1,2]
if (any(v2%y1/=[1,2])) print *,115
v1=v2
if (.not.allocated(v1)) print *,106
if (.not.allocated(v2)) print *,107
end
call s1
print *,'pass'
end
