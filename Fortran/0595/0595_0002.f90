integer,parameter::n3=rank(a=reshape([1,2,3,4,5,6,7,8],[2,2,2]))
integer,parameter::n2=kind(rank(a=reshape([2,4,6,1,3,7,8,9],[2,2,2])))
if(n3 .ne. 3)print*,"101"
if(((n3 .ne. rank(a=reshape([1,2,3,4,5,6,7,8],[2,2,2]))).and.(n3.ne.kind(kind(n2)))))print*,"102"
if(((n2 .ne.kind(rank(a=reshape([1,2,3,4,5,6,7,8],[2,2,2])))).and.(n2.ne.kind(kind(n3)))))print*,"103"
print*,"PASS"
end

