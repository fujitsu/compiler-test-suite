integer a(2:3),b(1:2)
integer,allocatable::x(:)

allocate(x,source=a)


deallocate(x)

allocate(x,source=(a))


end
