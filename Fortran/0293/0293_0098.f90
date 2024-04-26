integer,pointer::p(:)
integer,target::t(2,3,4)=2
k=24
p(2:k)=>t(:,:,:)
write(1,*)p
print *,'pass'
end
