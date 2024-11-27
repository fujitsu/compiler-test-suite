integer :: arr(10,20,30,40)
arr(1:10,1:20,1:30,1:40) =1
arr(1,2,1+2,4) = 2
arr(1,2,2+2,4) = 3
i1=1
i2=2
do k=1,2
rewind 10
write(10,*) (arr(1,k,j+2,4),arr(1,2,2+j,4),j=i1,i2)
rewind 10
read(10,*) i,i2,j,j2
if (k==2) then
if (i.ne.2) write(6,*) "NG"
if (j.ne.3) write(6,*) "NG"
endif
end do
call test02()
print *,"pass"
end
subroutine test02()
integer :: arr(10,20,30,40)
arr(1:10,1:20,1:30,1:40) =1
arr(1,2,1+2,4) = 2
arr(1,2,2+2,4) = 3
i1=1
i2=2
do k=1,2
rewind 10
write(10,*) (arr(1,k,j+2,4),j=i1,i2)
rewind 10
read(10,*) i,j
if (k==2) then
if (i.ne.2) write(6,*) "NG"
if (j.ne.3) write(6,*) "NG"
endif
end do
end

