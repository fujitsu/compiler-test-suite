call test01()
print *,"pass"
end

subroutine test01()
save
integer a(100,100,100,10),b(100,100,100,10)
integer c(100,100,100,10),d(100,100,100,10)
n=100
do i1=1,n
do i2=1,n
do i3=1,n
do i4=1,n/10
 a(i1,i2,i3,i4)=i4
 b(i1,i2,i3,i4)=a(i1,i2,i3,i4)
 c(i1,i2,i3,i4)=b(i1,i2,i3,i4)+1
 d(i1,i2,i3,i4)=-c(i1,i2,i3,i4)+1
end do
end do
end do
end do
if (d(1,2,3,4).ne.-4) print *,"err"
end subroutine
