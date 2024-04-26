integer,pointer::p(:)
integer,target::t(24)=2
k=24
p(2:k)=>t(:)
write(1,*)p(24:)
rewind 1
read(1,*) n
if (n/=2)print *,101
print *,'pass'
end
