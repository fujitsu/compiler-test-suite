module m1
type x0
  integer,allocatable::xb(:)
end type
type x
  integer::x1=1
  integer,allocatable::xa(:)
  type(x0),allocatable::xx
end type
end
subroutine s1()
use m1
block
type (x):: v1
allocate(v1%xa(2),source=2)

allocate(v1%xx)
allocate(v1%xx%xb(2),source=2)

end block
end
call s1()
print *,'pass'
end

