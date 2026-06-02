recursive subroutine s
type x3
  integer::x3a=1
  type(x3),allocatable:: x3b
  integer::x3z
end type
type(x3):: v1
allocate(v1%x3b)
if (v1%x3b%x3a/=1) print *,1001
end
call s
print *,'sngg226p : pass'
end
