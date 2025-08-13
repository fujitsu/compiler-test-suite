integer :: arr(1,1:2,4,1)
arr(1:1,1:2,1:4,1:1) =1
arr(1,2,1+2,1) = 2
arr(1,2,2+2,1) = 3
i1=1
i2=2
do k=1,2
rewind 31
write(31,*) (arr(1,k,j+2,1),j=i1,i2)
rewind 31
read(31,*) i,j
if (k==2) then
if (i.ne.2) write(6,*) "NG"
if (j.ne.3) write(6,*) "NG"
endif
end do
print *,"pass"
end
