subroutine test01()
integer :: arr(1,30,30,30)
arr(1:1,1:30,1:30,1:30) =1
arr(1,2,1+2,4) = 2
arr(1,2,2+2,4) = 3
rewind 10
write(10,*) ((arr(1:1,k,j+2,4),j=1,2),k=2,2) 
rewind 10
read(10,*) i,j
if (i.ne.2) write(6,*) "NG"
if (j.ne.3) write(6,*) "NG"
end

subroutine test02()
integer :: arr(1,30,30,30)
integer :: v(1) = 1
arr(1:1,1:30,1:30,1:30) =1
arr(1,2,1+2,4) = 2
arr(1,2,2+2,4) = 3
rewind 10
write(10,*) ((arr(v,k,j+2,4),j=1,2),k=2,2) 
rewind 10
read(10,*) i,j
if (i.ne.2) write(6,*) "NG"
if (j.ne.3) write(6,*) "NG"
end

subroutine test03()
integer :: arr(1,30,30,30)
integer :: v = 1
arr(1:1,1:30,1:30,1:30) =1
arr(1,2,1+2,4) = 2
arr(1,2,2+2,4) = 3
rewind 10
write(10,*) ((arr(v,k,j+2,4),j=1,2),k=2,2) 
rewind 10
read(10,*) i,j
if (i.ne.2) write(6,*) "NG"
if (j.ne.3) write(6,*) "NG"
end

call test01()
call test02()
call test03()
print *,"pass"
end
