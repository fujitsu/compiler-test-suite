integer :: arr(30,30,30,30)
arr(1:30,1:30,1:30,1:30) =1
i1=1
i2=2
do k=1,2
write(10,*) 2,3
rewind 10
read(10,*) (arr(1,k,j+2,4),j=i1,i2)
rewind 10
if (k==2) then
if (arr(1,k,3,4).ne.2) write(6,*) "NG"
if (arr(1,k,4,4).ne.3) write(6,*) "NG"
endif
end do
call test01()
print *,"pass"
end

subroutine test01()
end subroutine
