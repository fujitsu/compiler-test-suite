call sub01(-1,-5)
print *,'pass'
end
subroutine sub01(nn1,nn5)
type x
  integer,allocatable,dimension(:)::x1
end type
integer,parameter::p=8
type(x),allocatable::a(:),b(:,:,:),d(:,:,:),aa(:)

integer ::c(5)=(/1,2,3,4,5/),vs(5)=(/-5,-4,-3,-2,-1/)
allocate(a(p),b(nn1:-1,-1:nn1,nn5:nn1),d(nn1:-1,-1:nn1,nn5:nn1),aa(p))
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
aa=a
do i=1,p
  b=a(i)
  call chk(b)
  b=aa(i)
  call chk(b)
end do
a(1)=x(c(1:ik-3)+(/1,2/)-c(ik-4:ik-3))
a(2)=x(c((/1,2,3,4,5/)))
a(n3)=x(c+c)
a(4)=x(c(1:ik))
a(5)=x(reshape(c(1:5),(/5/)))
a(6)=x(reshape((/(k,k=1,10)/),(/10/)))
a(7)=x(reshape(c(1:ik),(/ik/)))
a(8)=x(reshape((/(k,k=1,ik+ik)/),(/ik+ik/)))
do kkx=1,p
aa(kkx)=a(kkx)
end do
do i=1,p
  b(nn1:nn1,:,-ik:-1)=a(i)
  d=b
  call chk(b)
  call chk(d)
  b(nn1:nn1,:,-ik:-1)=aa(i)
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
aa(1:n4*n2:n1)=a(1:p)
do i=1,p
  b(-1:nn1,-1:nn1,-ik:nn1:ik-4)=a(i)
  d(:,:,nn5:nn1:n2-n1)=b(:,::n1,::n1)
  call chk2(b)
  call chk2(d)
  b(-1:nn1,-1:nn1,-ik:nn1:ik-4)=aa(i)
  d(:,:,nn5:nn1:n2-n1)=b(:,::n1,::n1)
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
aa((/8,1,7,2,6,3,5,4/))=a((/8,1,7,2,6,3,5,4/))
do i=1,p
  b(:,:,vs)=a(i)
  d(:,:,-n5:-n1:n2-n1)=b(:,:,vs)
  call chk(b)
  call chk(d)
  b(:,:,vs)=aa(i)
  d(:,:,-n5:-n1:n2-n1)=b(:,:,vs)
  call chk(b)
  call chk(d)
end do
end do
contains 
subroutine chk(b)
type(x)::b(:,:,:)
n=ubound(b,dim=1)
do ii=1,size(b)
select case(i)
case(1)
if (size(b(n,n,ii)%x1)/=2)write(6,*) "NG"
if (any(b(n,n,ii)%x1/=(/1,2/)))write(6,*) "NG"
case(2)
if (size(b(n,n,ii)%x1)/=5)write(6,*) "NG"
if (any(b(n,n,ii)%x1/=(/1,2,3,4,5/))) write(6,*) "NG"
case(3)
if (size(b(n,n,ii)%x1)/=5)write(6,*) "NG"
if (any(b(n,n,ii)%x1/=(/1,2,3,4,5/)*2)) write(6,*) "NG"
case(4)
if (size(b(n,n,ii)%x1)/=5)write(6,*) "NG"
if (any(b(n,n,ii)%x1/=(/1,2,3,4,5/))) write(6,*) "NG"
case(5)
if (size(b(n,n,ii)%x1)/=5)write(6,*) "NG"
if (any(b(n,n,ii)%x1/=(/1,2,3,4,5/))) write(6,*) "NG"
case(6)
if (size(b(n,n,ii)%x1)/=10)write(6,*) "NG"
if (any(b(n,n,ii)%x1/=(/(k,k=1,10)/)))write(6,*) "NG"
case(7)
if (size(b(n,n,ii)%x1)/=5)write(6,*) "NG"
if (any(b(n,n,ii)%x1/=(/1,2,3,4,5/)))write(6,*) "NG"
case(8)
if (size(b(n,n,ii)%x1)/=10)write(6,*) "NG"
if (any(b(n,n,ii)%x1/=(/(k,k=1,10)/)))write(6,*) "NG"
case default
write(6,*) "NG"
end select
end do
end subroutine
subroutine chk2(b)
type(x)::b(:,:,:)
do ii=1,size(b)
n=ubound(b,dim=1)
select case(i)
case(8)
if (size(b(n,n,ii)%x1)/=2)write(6,*) "NG"
if (any(b(n,n,ii)%x1/=(/1,2/)))write(6,*) "NG"
case(7)
if (size(b(n,n,ii)%x1)/=5)write(6,*) "NG"
if (any(b(n,n,ii)%x1/=(/1,2,3,4,5/))) write(6,*) "NG"
case(6)
if (size(b(n,n,ii)%x1)/=5)write(6,*) "NG"
if (any(b(n,n,ii)%x1/=(/1,2,3,4,5/)*2)) write(6,*) "NG"
case(5)
if (size(b(n,n,ii)%x1)/=5)write(6,*) "NG"
if (any(b(n,n,ii)%x1/=(/1,2,3,4,5/))) write(6,*) "NG"
case(4)
if (size(b(n,n,ii)%x1)/=5)write(6,*) "NG"
if (any(b(n,n,ii)%x1/=(/1,2,3,4,5/))) write(6,*) "NG"
case(3)
if (size(b(n,n,ii)%x1)/=10)write(6,*) "NG"
if (any(b(n,n,ii)%x1/=(/(k,k=1,10)/)))write(6,*) "NG"
case(2)
if (size(b(n,n,ii)%x1)/=5)write(6,*) "NG"
if (any(b(n,n,ii)%x1/=(/1,2,3,4,5/)))write(6,*) "NG"
case(1)
if (size(b(n,n,ii)%x1)/=10)write(6,*) "NG"
if (any(b(n,n,ii)%x1/=(/(k,k=1,10)/)))write(6,*) "NG"
case default
write(6,*) "NG"
end select
end do
end subroutine
end

