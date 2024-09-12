type x
integer,allocatable::a1(:),a2(:)
end type
type(x)::v(2)
allocate(v(1)%a1(2))
v(1)%a1=1
 call move_alloc(v(1)%a1,v(1)%a2)
print *,'pass'
end
