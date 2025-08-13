integer :: arr(30,30,30,30)
arr(1:30,1:30,1:30,1:30) =1
i1=1
i2=2
do k=1,2
write(34,*) 2,3
rewind 34
read(34,*) (arr(1,k,j+2,4),j=i1,i2)
rewind 34
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
