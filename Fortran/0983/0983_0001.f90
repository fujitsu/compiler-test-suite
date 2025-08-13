subroutine test01()
integer :: arr(30,30,30,30,30)
arr(1:30,1:30,1:30,1:30,1:30) =1
arr(1,2,1+2,4,5) = 2
arr(1,2,2+2,4,5) = 3
rewind 2
write(2,*) ((arr(1,k,j+2,4,5),j=1,2),k=2,2)
rewind 2
read(2,*) i,j
if (i.ne.2) write(6,*) "NG"
if (j.ne.3) write(6,*) "NG"
end

subroutine test02()
integer :: arr2(30,30)
arr2(1:30,1:30) =1
arr2(2,1+2) = 2
arr2(2,2+2) = 3
rewind 3
write(3,*) ((arr2(k,j+2),j=1,2),k=2,2)
rewind 3
read(3,*) i,j
if (i.ne.2) write(6,*) "NG"
if (j.ne.3) write(6,*) "NG"
end

subroutine test03()
integer :: arr3(30,30,30)
arr3(1:30,1:30,1:30) =1
arr3(1,2,1+2) = 2
arr3(1,2,2+2) = 3
rewind 4
write(4,*) ((arr3(1,k,j+2),j=1,2),k=2,2)
rewind 4
read(4,*) i,j
if (i.ne.2) write(6,*) "NG"
if (j.ne.3) write(6,*) "NG"
end



call test01()
call test02()
call test03()
print *,"pass"
end
