subroutine s(a,b,c,k5,n5,d)
integer a(5),b(k5),c(k5),d(k5,n5)
do i=1,5
  b(i)=c(i)+1
end do
do i=1,5
  a(i)=b(i)+c(i)
end do
do i=1,k5
  a(i)=b(i)+c(i)
end do
do i=1,n5
  a(i)=b(i)+c(i)
end do
do i=1,k5
do j=1,n5
  d(j,i)=a(j)+b(j)+c(i)
end do
end do
end
parameter (k5=5,n5=5)
integer a(5),b(5),c(k5),d(k5,n5)
c=1
call  s(a,b,c,k5,n5,d)
print *,'pass'
end
