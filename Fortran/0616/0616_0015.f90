subroutine s1
type x
  integer,allocatable::k
end type
allocatable::k
type(x)::v
v=x(k)
if (allocated(v%k))print *,101
allocate(k)
k=2
v=x(k)
if (.not.allocated(v%k))print *,102
if (k/=2)print *,103
v=x(k+K)
if (.not.allocated(v%k))print *,104
if (v%k/=4)print *,105
v=x(null())
if (allocated(v%k))print *,106
end
call s1
print *,'pass'
end
