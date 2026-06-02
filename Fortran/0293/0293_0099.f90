integer,pointer::p(:)
integer,target::t(24)=2
k=24
p(2:k)=>t(:)
write(74,*)p(24:)
rewind 74
read(74,*) n
if (n/=2)print *,101
print *,'pass'
end
