integer :: arr(30,30,30,30)
arr(1:30,1:30,1:30,1:30) =1
arr(1,2,1+2,4) = 2
arr(1,2,2+2,4) = 3
i1=1
i2=2
do k=1,2
rewind 30
write(30,*) (arr(1,k,j+2,4),j=i1,i2)
rewind 30
read(30,*) i,j
if (k==2) then
if (i.ne.2) write(6,*) "NG"
if (j.ne.3) write(6,*) "NG"
endif
end do
print *,"pass"
end
