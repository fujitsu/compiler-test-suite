type x
 integer,allocatable::p1(:)
end type
type(x)::p
integer :: pp(10)
10 pp=1
20 do i=1,1
30    p=x(pp)
40 end do
50 write(1,*)p%p1
print *,'pass'
end

