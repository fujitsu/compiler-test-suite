type x
 integer,allocatable::p1(:)
end type
type(x)::p(10),p1(10)
integer,target::pp(10),xx(10,10)
pp=(/(k,k=1,10)/)
 p=x(pp)
do i=1,10
 p1(i)=p(i)
end do

write(1,*)(p1(i)%p1,i=1,10)
rewind 1
read (1,*) xx
do j=1,10
if (any(xx(:,j)/=(/(k,k=1,10)/)))write(6,*) "NG"
end do
print *,'pass'
end

