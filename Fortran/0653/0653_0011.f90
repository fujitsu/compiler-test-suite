call test01()
call test02()
print *,'pass'
end

subroutine test01()
type x
 integer,allocatable::p1(:)
end type
type(x)::p
integer a(10,10)
do i=1,10
 a(:,i)=(/1,2,3,4,5,6,7,8,9,10/)
 a(i,:)=i
end do
p=x(a(1,1:10))
call isub(p,1)
do i=1,10
   p=x(a(i,1:10))
   call isub(p,i)
end do
do i=1,10
   p=x(a(1:10,i))
   call isub(p,0)
end do
contains
subroutine isub(pp,ip)
type(x)::pp
if (ip.eq.0) then
 if (all(pp%p1.ne.(/(i,i=1,10)/))) print *,'fail'
else
 if (all(pp%p1.ne.ip)) print *,'fail'
end if
end subroutine
end

subroutine test02()
type x
 integer,allocatable::p1(:)
end type
type(x)::p
integer a(10,10,10)
do i=1,10
 do j=1,10
  do k=1,10
    a(i,j,k)=i*j*k
  end do
 end do
end do
p=x(a(1,1,1:10))
do i=1,10
 if (p%p1(i).ne.i) print *,'fail'
end do

p=x(a(1,1:10,2))
do i=1,10
 if (p%p1(i).ne.i*2) print *,'fail'
end do

p=x(a(1:10,1,3))
do i=1,10
 if (p%p1(i).ne.i*3) print *,'fail'
end do

end
