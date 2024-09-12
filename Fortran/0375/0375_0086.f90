module m1
contains
subroutine s(a,b,c,k5,n5,d,m5)
integer a(5),b(k5),c(k5),d(k5,n5,m5)
do i=0,4
  b(i+1)=c(i+1)+1
end do
do i=0,4
  a(i+1)=b(i+1)+c(i+1)
end do
do i=0,k5-1
  a(i+1)=b(i+1)+c(i+1)
end do
do i=2,n5+1
  a(i-1)=b(i-1)+c(i-1)
end do
do m=0,m5-1
do i=1,k5
do j=2,n5+1
  d(j-1,i,m+1)=a(j-1)+b(j-1)+c(i)
end do
end do
end do
end subroutine
end
use m1
parameter (k5=5,n5=5,m5=5)
integer  a(5),b(5),c(k5),d(k5,n5,m5)
c=1
call  s(a,b,c,k5,n5,d,m5)
print *,'pass'
end
