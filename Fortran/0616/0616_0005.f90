subroutine s1(n)
real(8),allocatable::a1
real(8),allocatable::a2(:)
real(4),pointer::p1
real(4),pointer::p2(:)
real(4)::v(2),vv(2)
allocate(a1,a2(2),p1,p2(2))
if (n==2) then
a1=0;a2=0;p1=0;p2=0
endif
v=a1+a1
v=a2+a2
v=p1+p1
v=p2+p2
vv=v
write(3,*)vv
end
call s1(2)
print *,'pass'
end
