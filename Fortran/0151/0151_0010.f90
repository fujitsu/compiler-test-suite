subroutine s1(k)
type x0
  integer,allocatable::xb(:)
end type
type x
  integer::x1=1
  integer,allocatable::xa(:)
  type(x0),allocatable::xx
end type
do kk=1,k
block
type (x):: v1
allocate(v1%xa(2))

allocate(v1%xx)
allocate(v1%xx%xb(2))
end block
end do
end
call s1(3)
print *,'pass'
end

