integer :: arr(30,30,30,30)
integer :: cc,vv(5)
arr(1:30,1:30,1:30,1:30) =1
arr(1,2,1+2,4) = 2
arr(1,2,2+2,4) = 3
i1=1
i3=3
i5=5
rewind 60
do k=i1,i3
write(60,*) (arr(1,k,j+2,4),j=i1,i5)
end do
rewind 60
do i=1,3
read(60,*) vv(1),vv(2),vv(3),vv(4),vv(5)
if (i.eq.2) then
if (vv(1).ne.2) write(6,*) "NG"
if (vv(2).ne.3) write(6,*) "NG"
if (vv(3).ne.1) write(6,*) "NG"
if (vv(4).ne.1) write(6,*) "NG"
if (vv(5).ne.1) write(6,*) "NG"
else
do j=1,5
if (vv(j).ne.1) write(6,*) "NG"
end do
end if
end do
rewind 66
do k=i1,i3
do j=i1,i5
write(66,*) arr(1,k,j+2,4)
end do
end do
rewind 66
do i=1,15
read (66,*) cc
if (i.ne.6 .and. i.ne.7) then
if (cc.ne.1) write(6,*) "NG" 
else if (i.eq.6) then
if (cc.ne.2) write(6,*) "NG" 
else
if (cc.ne.3) write(6,*) "NG" 
end if
end do
print *,"pass"
end
