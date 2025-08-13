integer :: arr(1,30,30,4:4,5:5,6:6,7:7)
arr(1,1:30,1:30,4,5,6,7) =1
arr(1,2,1+2,4,5,6,7)= 2
arr(1,2,2+2,4,5,6,7) = 3
rewind 21
write(21,*) ((arr(1,k,j+2,4,5,6,7),j=1,2),k=2,2)
rewind 21
read(21,*) i,j
if (i.ne.2) write(6,*) "NG"
if (j.ne.3) write(6,*) "NG"
print *,"pass"
end
