integer :: arr(30,30,30,30), brr(100,100,100,10)
arr(1:30,1:30,1:30,1:30) =1
arr(1,2,1+2,4) = 2
arr(1,2,2+2,4) = 3
brr(1:100,1:100,1:100,1:10) =1
brr(1,2,1+2,4) = 7
brr(1,2,2+2,4) = 8

rewind 10
write(10,*) ((arr(1,k,j+2,4),brr(1,k,j+2,4),j=1,2),k=2,2) 
rewind 10
read(10,*) i,i1,j,j2
if (i.ne.2) write(6,*) "NG"
if (j.ne.3) write(6,*) "NG"
if (i1.ne.7) write(6,*) "NG"
if (j2.ne.8) write(6,*) "NG"
print *,"pass"
end
