subroutine test01()
integer :: arr(30,30,30,30)
arr(1:30,1:30,1:30,1:30) =1
arr(1,2,1+2,4) = 2
arr(1,2,2+2,4) = 3
i1=1
i2=2
do k=1,2
rewind 10
write(10,*) (arr(1,k,2+j,4),j=i1,i2)
rewind 10
read(10,*) i,j
if (k==2) then
if (i.ne.2) write(6,*) "NG"
if (j.ne.3) write(6,*) "NG"
endif
end do
end 

subroutine test02()
integer :: arr(30,30,30,30)
arr(1:30,1:30,1:30,1:30) =1
arr(1,2,1+2,4) = 2
arr(1,2,2+2,4) = 3
i1=1
i2=2
do k=1,2
rewind 10
write(10,*) (arr(1,0+k+0,2+j,4),j=i1,i2)
rewind 10
read(10,*) i,j
if (k==2) then
if (i.ne.2) write(6,*) "NG"
if (j.ne.3) write(6,*) "NG"
endif
end do
end 

subroutine test03()
integer :: arr(30,30,30,30)
arr(1:30,1:30,1:30,1:30) =1
arr(1,2,1+2,4) = 2
arr(1,2,2+2,4) = 3
i1=1
i2=2
do k=1,2
rewind 10
write(10,*) (arr(1,k*1,2+j,4),j=i1,i2)
rewind 10
read(10,*) i,j
if (k==2) then
if (i.ne.2) write(6,*) "NG"
if (j.ne.3) write(6,*) "NG"
endif
end do
end 


subroutine test04()
integer :: arr(30,30,30,30)
arr(1:30,1:30,1:30,1:30) =1
arr(1,2,1+2,4) = 2
arr(1,2,2+2,4) = 3
i1=1
i2=2
do k=1,2
rewind 10
write(10,*) (arr(1,k,2+j*1,4),j=i1,i2)
rewind 10
read(10,*) i,j
if (k==2) then
if (i.ne.2) write(6,*) "NG"
if (j.ne.3) write(6,*) "NG"
endif
end do
end 


subroutine test05()
integer :: arr(30,30,30,30)
arr(1:30,1:30,1:30,1:30) =1
arr(1,2,1+2,4) = 2
arr(1,2,2+2,4) = 3
i1=1
i2=2
do k=1,2
rewind 10
write(10,*) ((arr(1,k,2+j,4)),j=i1,i2)
rewind 10
read(10,*) i,j
if (k==2) then
if (i.ne.2) write(6,*) "NG"
if (j.ne.3) write(6,*) "NG"
endif
end do
end 

subroutine test06()
integer :: arr(30,30,30,30)
arr(1:30,1:30,1:30,1:30) =1
arr(1,2,1+2,4) = 2
arr(1,2,2+2,4) = 3
i1=1
i2=2
do k=1,2
rewind 10
write(10,*) (arr(1,k*2-K*2+k,2+j,4),j=i1,i2)
rewind 10
read(10,*) i,j
if (k==2) then
if (i.ne.2) write(6,*) "NG"
if (j.ne.3) write(6,*) "NG"
endif
end do
end 

subroutine test07()
integer :: arr(30,30,30,30)
arr(1:30,1:30,1:30,1:30) =1
arr(1,2,1+2,4) = 2
arr(1,2,2+2,4) = 3
i1=1
i2=2
do k=1,2
rewind 10
write(10,*) (arr(1,(k),2+j,4),j=i1,i2)
rewind 10
read(10,*) i,j
if (k==2) then
if (i.ne.2) write(6,*) "NG"
if (j.ne.3) write(6,*) "NG"
endif
end do
end 

subroutine test08()
integer :: arr(30,30,30,30)
arr(1:30,1:30,1:30,1:30) =1
arr(1,2,1+2,4) = 2
arr(1,2,2+2,4) = 3
i1=1
i2=2
do k=1,2
rewind 10
write(10,*) (arr(i1,k,2+j,i2+i2),j=i1,i2)
rewind 10
read(10,*) i,j
if (k==2) then
if (i.ne.2) write(6,*) "NG"
if (j.ne.3) write(6,*) "NG"
endif
end do
end 
subroutine test09()
integer :: arr(30,30,30,30)
arr(1:30,1:30,1:30,1:30) =1
arr(1,2,1+2,4) = 2
arr(1,2,2+2,4) = 3
i1=1
i2=2
do k=1,2
rewind 10
write(10,*) (arr(1,k*i1,2+j,4),j=i1,i2)
rewind 10
read(10,*) i,j
if (k==2) then
if (i.ne.2) write(6,*) "NG"
if (j.ne.3) write(6,*) "NG"
endif
end do
end 

subroutine test10()
integer :: arr(30,30,30,30)
arr(1:30,1:30,1:30,1:30) =1
arr(1,2,1+2,4) = 2
arr(1,2,2+2,4) = 3
i1=1
i2=2
do k=1,2
rewind 10
write(10,*) (arr(1,k,i2+j,4),j=i1,i2)
rewind 10
read(10,*) i,j
if (k==2) then
if (i.ne.2) write(6,*) "NG"
if (j.ne.3) write(6,*) "NG"
endif
end do
end 
subroutine test11()
integer :: arr(30,30,30,30)
arr(1:30,1:30,1:30,1:30) =1
arr(1,2,1+2,4) = 2
arr(1,2,2+2,4) = 3
i1=1
i2=2
do k=1,2
rewind 10
write(10,*) (arr(1,int(k),2+j,4),j=i1,i2)
rewind 10
read(10,*) i,j
if (k==2) then
if (i.ne.2) write(6,*) "NG"
if (j.ne.3) write(6,*) "NG"
endif
end do
end 


subroutine test12()
integer :: arr(30,30,30,30)
arr(1:30,1:30,1:30,1:30) =1
arr(1,2,1+2,4) = 2
arr(1,2,2+2,4) = 3
i1=1
i2=2
do k=1,2
rewind 10
write(10,*) (-arr(1,k,2+j,4)*(-1),j=i1,i2)
rewind 10
read(10,*) i,j
if (k==2) then
if (i.ne.2) write(6,*) "NG"
if (j.ne.3) write(6,*) "NG"
endif
end do
end 




call test01()
call test02()
call test03()
call test04()
call test05()
call test06()
call test07()
call test08()
call test09()
call test10()
call test11()
call test12()
print *,"pass"
end
