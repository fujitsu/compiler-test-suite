call test01()
print *,"pass"
end

subroutine test01()
integer a(100),b(100),c(100),d(100)
common /com/ a,b,c,d
n=100
do i1=1,n
 a(i1)=i1
do i2=1,n
 b(i2)=i2
do i3=1,n
 c(i3)=i3
do i4=1,n
 d(i4)=i4
end do
end do
end do
end do
do i=1,n
if (d(i).ne.i) print *,"err"
end do
end subroutine
