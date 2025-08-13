integer :: arr(30,30,30,30)
arr(1:30,1:30,1:30,1:30) =1
arr(1,2,1+2,4) = 2
arr(1,2,2+2,4) = 3
rewind 1
write(1,*) ((arr(1,k,j+2,4),j=1,2),k=2,2)
rewind 1
read(1,*) i,j
if (i.ne.2) write(6,*) "NG"
if (j.ne.3) write(6,*) "NG"
print *,"pass"
end
