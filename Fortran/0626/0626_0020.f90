module m1
type base
   sequence
   integer::x1
end type
end
call test01()
call test02()
print *,"pass"
end

subroutine test01()
use m1
type (base) a(100),b(100),c(100),d(100)
common /com/ a,b,c,d
n=100
do i1=1,n
 a(i1)%x1=i1
do i2=1,n
 a(i2)%x1=i2
do i3=1,n
 a(i3)%x1=i3
do i4=1,n
 a(i4)%x1=i4
end do
end do
end do
end do
end subroutine
subroutine test02()
use m1
type(base) a(100,100,100,10),b(100,100,100,10)
type(base) c(100,100,100,10),d(100,100,100,10)
n=100
do i1=1,n
do i2=1,n
do i3=1,n
do i4=1,n/10
 a(i1,i2,i3,i4)%x1=i4
 b(i1,i2,i3,i4)%x1=a(i1,i2,i3,i4)%x1
 c(i1,i2,i3,i4)%x1=b(i1,i2,i3,i4)%x1+1
 d(i1,i2,i3,i4)%x1=-c(i1,i2,i3,i4)%x1+1
end do
end do
end do
end do
if (d(1,2,3,4)%x1.ne.-4) print *,"err"
end subroutine
