subroutine s1(n)
type x
real(8),allocatable::a1
real(8),allocatable::a2(:)
real(4),pointer::p1
real(4),pointer::p2(:)
end type
type (x)::z
real(4)::v(2),vv(2)
allocate(z%a1,z%a2(2),z%p1,z%p2(2))
if (n==1) then
z%a1=0;z%a2=0;z%p1=0;z%p2=0
endif
v=z%a1+z%a1
v=z%a2+z%a2
v=z%p1+z%p1
v=z%p2+z%p2
vv=v
write(7,*)vv
end
call s1(1)
print *,'pass'
end
