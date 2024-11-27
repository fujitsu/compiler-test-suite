subroutine test01()
integer :: arr(30,30,30,30)
arr(1:30,1:30,1:30,1:30) =1
i = 2
j = 3
rewind 10
write(10,*) i,j
rewind 10
read(10,*) ((arr(1,k,j+2,4),j=1,2),k=2,2)
if (arr(1,2,1+2,4).ne.2) write(6,*) "NG"
if (arr(1,2,2+2,4).ne.3) write(6,*) "NG"
end


subroutine test02()
integer :: arr(1,2,3,4)
arr(1:1,1:2,1:3,1:4) =1
i = 2
j = 3
rewind 11
write(11,*) i,j
rewind 11
do i1=1,1
 do i4=4,4
read(11,*) ((arr(i1,k,j+1,i4),j=1,2),k=2,2)
end do
end do
if (arr(1,2,1+1,4).ne.2) write(6,*) "NG"
if (arr(1,2,2+1,4).ne.3) write(6,*) "NG"
end

subroutine test03()
integer :: arr(1,2,3,4)
arr(1:1,1:2,1:3,1:4) =1
i = 2
j = 3
rewind 12
write(12,*) i,j
rewind 12
read(12,*) ((((arr(i1,k,j+1,i4),j=1,2),k=2,2),i1=1,1),i4=4,4)
if (arr(1,2,1+1,4).ne.2) write(6,*) "NG"
if (arr(1,2,2+1,4).ne.3) write(6,*) "NG"
end

subroutine test04()
integer :: arr(1,2,3,4)
integer :: bbb(2)
arr(1:1,1:2,1:3,1:4) =1
i = 2
j = 3
rewind 13
write(13,*) 1,i,1,j
rewind 13
read(13,*) ((((bbb(j),arr(i1,k,j+1,i4),j=1,2),k=2,2),i1=1,1),i4=4,4)
if (arr(1,2,1+1,4).ne.2) write(6,*) "NG"
if (arr(1,2,2+1,4).ne.3) write(6,*) "NG"
if (bbb(1).ne.1) write(6,*) "NG"
end

subroutine test05()
integer :: arr(1,2,3,4)
integer :: bbb(2)
arr(1:1,1:2,1:3,1:4) =1
i = 2
j = 3
rewind 14
write(14,*) i,1,j,1
rewind 14
read(14,*) ((((arr(i1,k,j+1,i4),bbb(j),j=1,2),k=2,2),i1=1,1),i4=4,4)
if (arr(1,2,1+1,4).ne.2) write(6,*) "NG"
if (arr(1,2,2+1,4).ne.3) write(6,*) "NG"
if (bbb(1).ne.1) write(6,*) "NG"
end

subroutine test06()
integer :: arr(1,2,3,4)
integer :: bbb(2),ccc(2)
arr(1:1,1:2,1:3,1:4) =1
i = 2
j = 3
rewind 14
write(14,*) 0,i,1,0,j,1
rewind 14
read(14,*) ((((ccc(j),arr(i1,k,j+1,i4),bbb(j),j=1,2),k=2,2),i1=1,1),i4=4,4)
if (arr(1,2,1+1,4).ne.2) write(6,*) "NG"
if (arr(1,2,2+1,4).ne.3) write(6,*) "NG"
if (bbb(1).ne.1) write(6,*) "NG"
if (ccc(1).ne.0) write(6,*) "NG"
end



call test01()
call test02()
call test03()
call test04()
call test05()
call test06()
print *,"pass"
end
