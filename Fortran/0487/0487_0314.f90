subroutine s1
type x
  integer,allocatable::x1
end type
type(x),pointer    ::v(:),b(:)
allocate(b(2),v(2))
b=x(1)
v=b
if (size(v)/=2) print *,101,size(v)
end
subroutine s2
type x
  integer,allocatable::x1
end type
type(x),allocatable::v(:),b(:)
allocate(b(2),v(3))
b=x(1)
v=b
if (size(v)/=2) print *,101,size(v)
end
subroutine s3
type x
  integer,allocatable::x1
end type
type(x)::v(2),b(2)
b=x(1)
v=b
if (size(v)/=2) print *,101,size(v)
end

call s1
call s2
call s3

print *,'pass'
end
