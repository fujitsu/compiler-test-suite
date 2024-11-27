subroutine test01()
integer :: arr(100,100,100,9)
arr(1:30,1:30,1:30,1:9) =1
arr(1,2,1+2,4) = 2
arr(1,2,2+2,4) = 3
rewind 10
write(10,*) ((arr(1,k,j+2,4),j=1,2),k=2,2) 
rewind 10
read(10,*) i,j
if (i.ne.2) write(6,*) "NG"
if (j.ne.3) write(6,*) "NG"
end 

subroutine test02()
integer :: arr(100,100,100,90)
arr(1:30,1:30,1:30,1:30) =1
arr(1,2,1+2,4) = 2
arr(1,2,2+2,4) = 3
rewind 11
write(11,*) ((arr(1,k,j+2,4),j=1,2),k=2,2)
rewind 11
read(11,*) i,j
if (i.ne.2) write(6,*) "NG"
if (j.ne.3) write(6,*) "NG"
end 

subroutine test03()
integer :: arr(10,100,100,9)
arr(1:10,1:30,1:30,1:9) =1
arr(1,2,1+2,4) = 2
arr(1,2,2+2,4) = 3
rewind 12
write(12,*) ((arr(1,k,j+2,4),j=1,2),k=2,2)
rewind 12
read(12,*) i,j
if (i.ne.2) write(6,*) "NG"
if (j.ne.3) write(6,*) "NG"
end 

subroutine test04()
integer :: arr(100,10,100,9)
arr(1:30,1:10,1:30,1:9) =1
arr(1,2,1+2,4) = 2
arr(1,2,2+2,4) = 3
rewind 13
write(13,*) ((arr(1,k,j+2,4),j=1,2),k=2,2)
rewind 13
read(13,*) i,j
if (i.ne.2) write(6,*) "NG"
if (j.ne.3) write(6,*) "NG"
end 


call test01()
call test02()
call test03()
call test04()
print *,"pass"
end
