call test()
print *,'pass'
end
subroutine test()
integer :: i,i2,a(100),b(100,100)
do i=1,100
 do i2=1,100
    b(i,i2)=i2
 end do
enddo
do 10 i=1,100
a(i) = b(i,i)
10 continue
if (a(100).ne.100  )print *,'err'
end
