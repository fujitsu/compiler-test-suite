integer,parameter::n1=rank(a=[1])
integer,parameter::n3=rank(a=reshape([1,2,3,4],[2,2]))
integer,parameter::n2=kind(rank(a=[1]))
if(n1 .ne. 1)print*,"100"
if(n3 .ne. 2)print*,"101"
if((n2 .ne. kind(rank(a=[1])).and.(n2 .ne.kind(kind(n1)))))print*,"102"
if((n2 .ne. kind(rank(a=reshape([1,2,3,4],[2,2])))).and.(n2.ne.kind(kind(n1))))print*,"103"
if(n2 .ne. kind(kind(n1)))print*,"104"
print*,"PASS"
end

