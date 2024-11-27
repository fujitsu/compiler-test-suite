type x
  integer,allocatable,dimension(:)::x1
end type
integer,parameter::p=8
type(x)::a(p),b(5),d(5)

integer ::c(5)=(/1,2,3,4,5/),vs(5)=(/1,2,3,4,5/)
do kkk=1,3
ik=5;n1=1;n2=2;n3=3;n4=4;n5=5
a(1)=x((/1,2/))
a(2)=x(c)
a(3)=x(c+c)
a(4)=x(c(1:ik))
a(5)=x(reshape(c(1:5),(/5/)))
a(6)=x(reshape((/(k,k=1,10)/),(/10/)))
a(7)=x(reshape(c(1:ik),(/ik/)))
a(8)=x(reshape((/(k,k=1,ik+ik)/),(/ik+ik/)))
do i=1,p
  b=a(i)
  call chk(b)
end do
a(1)=x(c(1:ik-3)+(/1,2/)-c(ik-4:ik-3))
a(2)=x(c((/1,2,3,4,5/)))
a(3)=x(c+c)
a(4)=x(c(1:ik))
a(5)=x(reshape(c(1:5),(/5/)))
a(6)=x(reshape((/(k,k=1,10)/),(/10/)))
a(7)=x(reshape(c(1:ik),(/ik/)))
a(8)=x(reshape((/(k,k=1,ik+ik)/),(/ik+ik/)))
do i=1,p
  b(1:ik)=a(i)
  d=b
  call chk(b)
  call chk(d)
end do
a(8)=x((/1,2/))
a(7)=x(c)
a(6)=x(c+c)
a(5)=x(c(1:ik))
a(4)=x(reshape(c(1:5),(/5/)))
a(3)=x(reshape((/(k,k=1,10)/),(/10/)))
a(2)=x(reshape(c(1:ik),(/ik/)))
a(1)=x(reshape((/(k,k=1,ik+ik)/),(/ik+ik/)))
do i=1,p
  b(1:ik:ik-4)=a(i)
  d(n1:n5:n2-n1)=b(n2-1:n4+n1:n3-n2)
  call chk2(b)
  call chk2(d)
end do
a(1)=x((/1,2/))
a(2)=x(c)
a(3)=x(c+c)
a(4)=x(c(1:ik))
a(5)=x(reshape(c(1:5),(/5/)))
a(6)=x(reshape((/(k,k=1,10)/),(/10/)))
a(7)=x(reshape(c(1:ik),(/ik/)))
a(8)=x(reshape((/(k,k=1,ik+ik)/),(/ik+ik/)))
do i=1,p
  b(vs)=a(i)
  d(n1:n5:n2-n1)=b(vs)
  call chk(b)
  call chk(d)
end do
end do
print *,'pass'
contains 
subroutine chk(b)
type(x)::b(:)
do ii=1,size(b)
select case(i)
case(1)
if (size(b(ii)%x1)/=2)write(6,*) "NG"
if (any(b(ii)%x1/=(/1,2/)))write(6,*) "NG"
case(2)
if (size(b(ii)%x1)/=5)write(6,*) "NG"
if (any(b(ii)%x1/=(/1,2,3,4,5/))) write(6,*) "NG"
case(3)
if (size(b(ii)%x1)/=5)write(6,*) "NG"
if (any(b(ii)%x1/=(/1,2,3,4,5/)*2)) write(6,*) "NG"
case(4)
if (size(b(ii)%x1)/=5)write(6,*) "NG"
if (any(b(ii)%x1/=(/1,2,3,4,5/))) write(6,*) "NG"
case(5)
if (size(b(ii)%x1)/=5)write(6,*) "NG"
if (any(b(ii)%x1/=(/1,2,3,4,5/))) write(6,*) "NG"
case(6)
if (size(b(ii)%x1)/=10)write(6,*) "NG"
if (any(b(ii)%x1/=(/(k,k=1,10)/)))write(6,*) "NG"
case(7)
if (size(b(ii)%x1)/=5)write(6,*) "NG"
if (any(b(ii)%x1/=(/1,2,3,4,5/)))write(6,*) "NG"
case(8)
if (size(b(ii)%x1)/=10)write(6,*) "NG"
if (any(b(ii)%x1/=(/(k,k=1,10)/)))write(6,*) "NG"
case default
write(6,*) "NG"
end select
end do
end subroutine
subroutine chk2(b)
type(x)::b(:)
do ii=1,size(b)
select case(i)
case(8)
if (size(b(ii)%x1)/=2)write(6,*) "NG"
if (any(b(ii)%x1/=(/1,2/)))write(6,*) "NG"
case(7)
if (size(b(ii)%x1)/=5)write(6,*) "NG"
if (any(b(ii)%x1/=(/1,2,3,4,5/))) write(6,*) "NG"
case(6)
if (size(b(ii)%x1)/=5)write(6,*) "NG"
if (any(b(ii)%x1/=(/1,2,3,4,5/)*2)) write(6,*) "NG"
case(5)
if (size(b(ii)%x1)/=5)write(6,*) "NG"
if (any(b(ii)%x1/=(/1,2,3,4,5/))) write(6,*) "NG"
case(4)
if (size(b(ii)%x1)/=5)write(6,*) "NG"
if (any(b(ii)%x1/=(/1,2,3,4,5/))) write(6,*) "NG"
case(3)
if (size(b(ii)%x1)/=10)write(6,*) "NG"
if (any(b(ii)%x1/=(/(k,k=1,10)/)))write(6,*) "NG"
case(2)
if (size(b(ii)%x1)/=5)write(6,*) "NG"
if (any(b(ii)%x1/=(/1,2,3,4,5/)))write(6,*) "NG"
case(1)
if (size(b(ii)%x1)/=10)write(6,*) "NG"
if (any(b(ii)%x1/=(/(k,k=1,10)/)))write(6,*) "NG"
case default
write(6,*) "NG"
end select
end do
end subroutine
end

